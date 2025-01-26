import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:segurinet/Screens/QuestionScreen.dart';
import 'package:segurinet/Screens/BadgeScreen.dart';
import 'package:segurinet/Screens/VideoScreen.dart';
import 'package:segurinet/models/Question.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VideoScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/video.svg',
                      color: Colors.redAccent,
                      height: 35,
                      width: 30,
                    ),
                  ),
                ),
                SizedBox(width: 10), // Espacio entre los iconos
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BadgeScreen(correctAnswers: 0),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/flame.svg',
                      color: Colors.redAccent,
                      height: 35,
                      width: 30,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Bienvenido/as",
              style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Empecemos",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.0,
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            QuestionScreen(questions: childrenQuestions),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 20, left: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.cyanAccent,
                                  Colors.cyan,
                                  Colors.cyanAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white54),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.done, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Rango (8-11)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Niñas/os",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 140,
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            QuestionScreen(questions: adolescentQuestions),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 20, left: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlueAccent,
                                  Colors.blue,
                                  Colors.lightBlueAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white54),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.done, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Rango (12-18)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Adolescentes",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 140,
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            QuestionScreen(questions: seniorQuestions),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: EdgeInsets.only(top: 10, bottom: 20, left: 20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.tealAccent,
                                  Colors.teal,
                                  Colors.tealAccent
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white54),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(Icons.done, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Rango (65+)",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Adultos Mayores",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 140,
                        width: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
