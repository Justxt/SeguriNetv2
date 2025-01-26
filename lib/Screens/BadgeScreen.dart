import 'package:flutter/material.dart';

class BadgeScreen extends StatelessWidget {
  final int correctAnswers;

  const BadgeScreen({super.key, required this.correctAnswers});

  @override
  Widget build(BuildContext context) {
    String badgeTitle;
    String badgeImage;
    String nextBadgeMessage;
    String nextBadgeImage;

    if (correctAnswers >= 8) {
      badgeTitle = "Centurión Cibernético";
      badgeImage = 'assets/images/11.png';
      nextBadgeMessage = "¡Felicidades! Tienes la insignia más alta.";
      nextBadgeImage = '';
    } else if (correctAnswers >= 4) {
      badgeTitle = "Defensor Cibernético";
      badgeImage = 'assets/images/12.png';
      nextBadgeMessage = "Siguiente insignia: Centurión Cibernético";
      nextBadgeImage = 'assets/images/11.png';
    } else if (correctAnswers >= 1) {
      badgeTitle = "Guardia Novato";
      badgeImage = 'assets/images/13.png';
      nextBadgeMessage = "Siguiente insignia: Defensor Cibernético";
      nextBadgeImage = 'assets/images/12.png';
    } else {
      badgeTitle = "Aún no tienes insignias";
      badgeImage = '';
      nextBadgeMessage = "Por favor, resuelve una categoria.";
      nextBadgeImage = '';
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30.0, right: 30.0),
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("🔥Tus insignias🔥", style: TextStyle(fontSize: 30)),
            Text("Máximo de respuestas correctas: $correctAnswers",
                style: TextStyle(fontSize: 17)),
            if (badgeImage.isNotEmpty) Image.asset(badgeImage, height: 210),
            SizedBox(height: 20),
            Text(
              badgeTitle,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              nextBadgeMessage,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            if (nextBadgeImage.isNotEmpty)
              Image.asset(nextBadgeImage, height: 100),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Volver",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.cyan,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
