import 'package:storychallenge/model/story.dart';

class StoryHelper {
  List<Story> _storyData = [
    Story(
        question:
            'Yolun ortasında arabanızın tekerleği patladı ve telefonunuz yanınızda yok. Otostop çekmeye karar verdiniz. Paslı bir kamyonet yanınızda durdu. Ruhsuz gözleri ile geniş kenarlı şapkası olan bir adam sizin için yolcu kapısını açtı ve sordu: "Gezintiye ihtiyacın mı var evlat?".',
        choice1: 'Aynen adamım. Yardımın için teşekkürler!',
        choice2: 'Ona bir katil olup olmadığını sorsan iyi olur.'),
    Story(
        question: 'Sorudan habersiz yavaşça başını salladı.',
        choice1: 'En azından dürüst. Ben binecegim.',
        choice2: 'Bekle, bir lastiğin nasıl değiştirileceğini biliyorum.'),
    Story(
        question:
            'Araba kullanmaya başladığınızda, yabancı annesiyle olan ilişkisi hakkında konuşmaya başlar. Dakikalar içinde sinirlenmeye başlar. Torpido gözünü açmanı ister. İçinde kanlı bir bıçak, iki parçalanmış parmak ve Elton John\'un kasetini buluyorsun.',
                    choice1: 'Elton John\'u seviyorum! diyip ona kaseti verin.',
        choice2: 'O ya da sen! Bıçağı alıp bıçakladın.'),
    Story(
        question:
            'Yabancı birinin arabasına binerken çok dikkatli olman gerektigini iyi biliyorsun.Ve bu konuda temkinlisin.',
        choice1: 'Yeniden Oyna',
        choice2: ''),
    Story(
        question:
            'Bıçagı alırsın ve adamı bıçaklarsın.Ucurumun kenarında yol aldıgınız için araç ucurumdan aşagı sürüklenir..',
        choice1: 'Yeniden Oyna',
        choice2: ''),
    Story(
        question:
            '"Bu gece aşkı hissedebiliyor musun" ayetlerini söylerken katille bağlantı kuruyorsun. Seni bir sonraki kasabaya bırakıyor. Gitmeden önce, cesetleri boşaltmak için iyi yerler olup olmadığını soruyor. Cevap veriyorsun: "İskeleyi deneyin".',
        choice1: 'Yeniden Oyna',
        choice2: '')
  ];

  Map<int, List<int>> _way = {
    0: [2, 1],
    2: [5, 4],
    1: [2, 3],
    3: [0, null],
    4: [0, null],
    5: [0, null],
  };

  int questionNumber = 0;

  Story currentQuestion(){
    return _storyData[questionNumber];
  }

  nextQuestion(int index) {
    List<int> sorular = List();
    sorular.addAll(_way[questionNumber]);

    questionNumber = sorular[index];
    print(questionNumber);
  }
}
