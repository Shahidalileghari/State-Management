import 'package:flutter/material.dart';
import 'package:state_management/Login_Page.dart';
import 'package:state_management/SignUp.dart';
import 'package:state_management/StatelessWidget.dart';

import 'Dark_Theme.dart';
import 'Example_One.dart';
import 'Favorite_App.dart';
import 'Statemanagement.dart';

class All_Classes extends StatefulWidget {
  const All_Classes({super.key});

  @override
  State<All_Classes> createState() => _All_ClassesState();
}

class _All_ClassesState extends State<All_Classes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true
        ,
        leading: const IconButton(onPressed: null, icon: Icon(Icons.arrow_back),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Statemanagement()));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Introduction"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Example_One()));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Example one"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Favorite_App()));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Favorite App"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Dart_Theme()));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Dark Theme"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  State_Widget()));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Stateless Widget"),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  Login_Page()));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Login Page"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const SignUp()));
              },
              child: Container(
                width: 150,
                height: 50,
                color: Colors.blue,
                child: const Center(
                  child: Text("Sign Page"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
