import 'dart:math';
import 'dart:io';

void main() {
  Quiz saad = new Quiz();
  saad.startQuiz(name: "saad");
}

class Quiz {
  int score = 0;
  int totalQuestion = 20;
  List<String> wrongAnswers = [];
  Map<String, String> myMap = {
    "What is 2 + 2?": "4",
    "What is 5 x 7?": "35",
    "What is 10 - 3?": "7",
    "What is 8 ÷ 2?": "4",
    "What is the square root of 16?": "4",
    "What is 3 squared?": "9",
    "What is 12 + 18?": "30",
    "What is 6 x 9?": "54",
    "What is 15 - 7?": "8",
    "What is 20 ÷ 5?": "4",
    "What is 25 squared?": "625",
    "What is 9 x 4?": "36",
    "What is 40 + 60?": "100",
    "What is 12 - 5?": "7",
    "What is 16 ÷ 4?": "4",
    "What is 7 cubed?": "343",
    "What is 30 x 5?": "150",
    "What is 18 - 9?": "9",
    "What is 64 ÷ 8?": "8",
    "What is 10 squared?": "100",
    "What is 2 to the power of 3?": "8",
    "What is 45 + 55?": "100",
    "What is 14 - 6?": "8",
    "What is 81 ÷ 9?": "9",
    "What is 3 to the power of 4?": "81",
    "What is 50 x 2?": "100",
    "What is 24 - 12?": "12",
    "What is 144 ÷ 12?": "12",
    "What is 5 squared?": "25",
    "What is 4 to the power of 3?": "64",
    "What is 75 + 25?": "100",
    "What is 20 - 10?": "10",
    "What is 256 ÷ 16?": "16",
    "What is 6 squared?": "36",
    "What is 7 to the power of 2?": "49",
    "What is 90 + 10?": "100",
    "What is 15 - 5?": "10",
    "What is 49 ÷ 7?": "7",
    "What is 10 to the power of 2?": "100",
    "What is 3 cubed?": "27",
    "What is 125 + 75?": "200",
    "What is 9 - 4?": "5",
    "What is 81 ÷ 3?": "27",
    "What is 2 to the power of 4?": "16",
    "What is 40 - 20?": "20",
    "What is 36 ÷ 6?": "6",
    "What is 8 squared?": "64",
    "What is 11 to the power of 2?": "121",
    "What is 60 + 40?": "100",
    "What is 25 - 15?": "10",
    "What is 144 ÷ 2?": "72"
  };
  String? name;

  void startQuiz({required String name, String? age}) {
    print("\nWelcome $name to our quiz game\n");
    this.name = name;
    Random newRandom = Random();
    List<String> randList = myMap.keys.toList()..shuffle(newRandom);
    List<String> question = [];
    List<String> answers = [];

    for (var key in randList) {
      question.add(key);
      answers.add(myMap[key]!);
    }

    for (var i = 0; i < totalQuestion; i++) {
      print("Question no. ${i + 1} - ${question[i]}");
      String? input = stdin.readLineSync();
      if (input == answers[i]) {
        score++;
      } else {
        wrongAnswers.add("Your answer is : ${input}");
        wrongAnswers.add("Right answer is : ${answers[i]}\n");
        wrongAnswers.add("the Question is is : ${question[i]}");
      }
      print("");
    }
    result();
    mistakes();
    playAgain();
  }

  void result() {
    print(
        "$name has scored $score numbers in our test\nThe percentage of $name is : ${(score / 20) * 100}%\n");
    if (score >= totalQuestion / 2) {
      print("Congratulations you have won this game\n");
    }
  }

  void mistakes() {
    print("Do you want to check your mistakes?\npress y or n to continue");
    String? isAgain = stdin.readLineSync();
    if (isAgain == 'y') {
      for (int i = 0; i < wrongAnswers.length - 2; i = i + 3) {
        print(
            "${wrongAnswers[i + 2]}\n${wrongAnswers[i]}\nwhile ${wrongAnswers[i + 1]}");
      }
    } else {
      playAgain();
    }
  }

  void playAgain() {
    print("Do you want to play again?\npress y or n to continue");
    String? isAgain = stdin.readLineSync();
    if (isAgain == 'y') {
      startQuiz(name: name!);
    }
  }
}
