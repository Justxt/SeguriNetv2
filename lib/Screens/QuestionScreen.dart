import 'package:flutter/material.dart';
import 'package:segurinet/models/Question.dart';
import 'dart:math';
import 'BadgeScreen.dart';

class QuestionScreen extends StatefulWidget {
  final List<Question> questions;
  final String category;
  final Function(int) onQuizCompleted;

  const QuestionScreen({super.key, required this.questions, required this.category, required this.onQuizCompleted});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0;
  String? selectedOption;
  List<String> shuffledOptions = [];

  @override
  void initState() {
    super.initState();
    _shuffleOptions();
  }

  void _shuffleOptions() {
    setState(() {
      shuffledOptions =
          List.from(widget.questions[currentQuestionIndex].options);
      shuffledOptions.shuffle(Random());
    });
  }

  void _showResultDialog(bool isCorrect) {
    if (isCorrect) {
      correctAnswers++;
    }
    Question currentQuestion = widget.questions[currentQuestionIndex];
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            clipBehavior: Clip.none, // Permite que los elementos sobresalgan
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.cyan.shade100,
                      const Color.fromARGB(255, 56, 181, 197)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        height: 50), // Espacio para la imagen sobresaliente
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            isCorrect ? Icons.done : Icons.clear,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          isCorrect ? "Correcto" : "Incorrecto",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Text(
                      isCorrect
                          ? "¡Bien hecho! Respuesta correcta."
                          : "¡Ups! Esa no es la respuesta correcta.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      isCorrect
                          ? "Recuerda: ${currentQuestion.interestingFact}"
                          : "¿Por qué? ${currentQuestion.explanation}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              Positioned(
                top: -60, // Posición para sobresalir del borde
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 60,
                  child: Image.asset(
                    'assets/images/icono.png',
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              Positioned(
                bottom: -20, // Posición para sobresalir del borde
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    _nextQuestion();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  ),
                  child: Text(
                    "GENIAL",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _nextQuestion() {
    if (currentQuestionIndex < widget.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOption = null;
        _shuffleOptions();
      });
    } else {
      widget.onQuizCompleted(correctAnswers);
      // Navegar a BadgeScreen al finalizar las preguntas
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BadgeScreen(correctAnswers: correctAnswers),
        ),
      );
    }
  }

  String _getImagePath() {
    int imageIndex = (currentQuestionIndex % 10) + 1;
    switch (widget.category) {
      case 'children':
        return 'assets/images/children/$imageIndex.png';
      case 'adolescent':
        return 'assets/images/adolescent/$imageIndex.png';
      case 'senior':
        return 'assets/images/senior/$imageIndex.png';
      default:
        return 'assets/images/default.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = widget.questions[currentQuestionIndex];

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, right: 30, left: 30),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 124, 255, 255),
            const Color.fromARGB(255, 172, 211, 235),
            const Color.fromARGB(255, 124, 255, 255)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      "${currentQuestionIndex + 1}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(_getImagePath(), height: 250),
            SizedBox(
              height: 20,
              
            ),
            Text(
              "Pregunta ${currentQuestionIndex + 1} de ${widget.questions.length}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              currentQuestion.question,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 35,
            ),
            Column(
              children: shuffledOptions.map((option) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedOption = option;
                    });
                    bool isCorrect = option == currentQuestion.correctAnswer;
                    _showResultDialog(isCorrect);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: selectedOption == option
                            ? const Color.fromARGB(255, 17, 0, 255)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(23)),
                    child: Center(
                      child: Text(
                        option,
                        style: TextStyle(
                            color: selectedOption == option
                                ? const Color.fromARGB(255, 172, 211, 235)
                                : const Color.fromARGB(255, 172, 211, 235),
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
