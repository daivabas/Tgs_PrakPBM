import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
      questionText: 'Museum Nasional terletak di Jakarta Pusat',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Museum Macan terkenal karena koleksi benda bersejarah kerajaan Mataram',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Museum Wayang menyimpan koleksi wayang dari berbagai daerah di Indonesia',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Museum Bahari berfokus pada sejarah perjuangan kemerdekaan Indonesia',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Museum Tekstil Jakarta menampilkan koleksi kain tradisional Nusantara',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Museum Fatahillah awalnya merupakan balai kota Batavia pada masa kolonial Belanda',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Museum Geologi berada di Surabaya dan terkenal dengan fosil dinosaurusnya',
      questionAnswer: false,
    ),
    Question(
      questionText:
          'Museum Batik di Pekalongan menjadi pusat edukasi budaya batik Indonesia',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Museum Sumpah Pemuda berkaitan erat dengan peristiwa 28 Oktober 1928',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Museum Tsunami Aceh dibangun untuk memperingati tragedi gempa dan tsunami tahun 2010',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Museum Benteng Vredeburg terletak di Yogyakarta',
      questionAnswer: true,
    ),
    Question(
      questionText:
          'Museum Kereta Api Ambarawa memamerkan lokomotif-lokomotif modern listrik',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Museum Ullen Sentalu dikenal sebagai museum budaya Jawa',
      questionAnswer: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  int getTotalQuestions() {
    return _questionBank.length;
  }

  void reset() {
    _questionNumber = 0;
  }
}
