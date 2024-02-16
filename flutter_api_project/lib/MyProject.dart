import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_api_project/HomeScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      navigateNextScreen();
    });
  }

  void navigateNextScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 50,
              color: Colors.blueAccent,
              child: const Center(
                child: Text(
                  "WELCOME",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CircularProgressIndicator(color: Colors.red, strokeWidth: 7)
          ],
        ),
      ),
    );
  }
}
