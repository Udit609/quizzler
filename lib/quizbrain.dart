import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNo = 0;
  final List<Question> _questionBank = [
    Question('Is China the largest country in the world?', false),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question('Spiders have 6 legs.', false),
    Question('Is Venus the closest planet to the Sun?', false),
    Question(' Is it possible to sneeze while asleep?', false),
    Question('5+9 = 14', true),
    Question('Watching horror movies doesn’t cause any reaction in your body.',
        false),
    Question(
        'Every 7 days, a new layer of epidermis appears on your skin.', false),
    Question('Bats always turn left when they are exiting the caves.', false),
    Question('Honeybees are the fastest flying insect.', false),
    Question('Australia is both a country and a continent.', true),
    Question('There is no railway system in Iceland.', true),
    Question('Meat is consumed by herbivore animals.', false),
    Question(
        ' The longest and strongest bone in the human body is the thighbone.',
        true),
    Question('There are 184 countries in the world.', false),
    Question(
        'It is normal to lose a minimum of 50-100 strands a day from your scalp, no matter how healthy it is.',
        true),
    Question('A group of crows is called a ‘murder’.', true),
    Question(' We need oxygen for breathing.', true),
    Question(' Apes can laugh when they are tickled.', true),
    Question(' Baby panda is bigger than a mouse after being born.', false),
    Question('The size of our hands is not equivalent to our heart.', true),
    Question('One hundred thousand consists of five zeroes.', true),
    Question('Mercury is the hottest planet in the solar system.', false),
    Question('The hardest natural mineral is not diamond.', false),
    Question(
        'The region of the human body which experiences the fastest growth of hair is facial hair?',
        true)
  ];

  void nextQuestion() {
    if (_questionNo < _questionBank.length - 1) {
      print(_questionNo);
      _questionNo++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNo].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNo].questionAnswer;
  }

  bool isFinished() {
    if (_questionNo >= _questionBank.length - 1) {
      print('Quiz is finished');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNo = -1;
  }
}
