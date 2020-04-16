import 'package:flutter/material.dart';
import 'package:storychallenge/model/story_helper.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  StoryHelper _helper = StoryHelper();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/story.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _question(),
          _choice1(),
          _choice2(),
        ],
      ),
    );
  }

  Widget _question() => Expanded(
        flex: 4,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _helper.currentQuestion().question,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 24,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      );
  Widget _choice1() => Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 48, left: 8, right: 8),
        child: FlatButton(
            color: Colors.green.withOpacity(0.7),
            onPressed: () {
              _nextQuestion(0);
            },
            child: Text(_helper.currentQuestion().choice1,
            style: TextStyle(fontSize: 24,),)),
      ));
  Widget _choice2() => Visibility(
        visible: _helper.currentQuestion().choice2.isEmpty ? false : true,
        child: Expanded(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, bottom: 48, left: 8, right: 8),
              child: FlatButton(
                color: Colors.green.withOpacity(0.8),
                onPressed: () {
                  _nextQuestion(1);
                },
                child: Text(
                  _helper.currentQuestion().choice2,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            )),
      );

  void _nextQuestion(int i) {
    setState(() {
      _helper.nextQuestion(i);
    });
  }
}
