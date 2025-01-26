import 'package:flutter/material.dart';
import 'package:segurinet/components/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset('assets/images/home.png'),
              ),
              Center(
                child: Text(
                  "SEGURINET",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 78, 243, 252),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  "Proteccion digital para ti y tu familia",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(height: 80),
              MyButton(
                  text: "Comenzar",
                  onTap: () {
                    Navigator.pushNamed(context, '/categoryscreen');
                  }),
            ],
          ),
        ));
  }
}
