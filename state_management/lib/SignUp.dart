import 'package:flutter/material.dart';

import 'List.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const All_Classes()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(

              decoration: const InputDecoration(
                hintText: "Name",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(

              decoration: const InputDecoration(
                hintText: "Phone",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(

              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            TextFormField(
              obscureText: true,

              decoration: const InputDecoration(
                hintText: "password",
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));

              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child:  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
