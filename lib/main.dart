import 'package:flutter/material.dart';
import 'package:segurinet/Screens/CategoryScreen.dart';
import 'package:segurinet/Screens/HomeScreen.dart';
import 'package:segurinet/Screens/QuestionScreen.dart';
import 'package:segurinet/Screens/BadgeScreen.dart';
import 'package:segurinet/Screens/VideoScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/homescreen': (context) => HomeScreen(),
        '/categoryscreen': (context) => CategoryScreen(),
        '/questionscreen': (context) => QuestionScreen(
          questions: [], 
          category: 'defaultCategory', 
          onQuizCompleted: (int score) {},
        ),
        '/badgescreen': (context) => BadgeScreen(correctAnswers: 0),
        '/videoscreen': (context) => VideoScreen(),
      },
    );
  }
}

