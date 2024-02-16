

import 'package:day_four/Day_five.dart';
import 'package:flutter/material.dart';

import 'Day_four.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text("Day three"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login to your account",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.blue, fontSize: 24),
              // maxLength: 20,
              decoration: InputDecoration(
                  hintText: "Email or phone",
                  labelText: "Email or phone",
                  filled: true,
                  fillColor: Colors.grey,
                  suffixIcon: const Icon(
                    Icons.email_outlined,
                    size: 28,
                  ),
                  suffixIconColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              obscureText: true,
              style: const TextStyle(color: Colors.blue, fontSize: 24),
              // maxLength: 10,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Colors.grey,
                  labelText: "Password",
                  suffixIcon: const Icon(
                    Icons.password,
                    size: 28,
                  ),
                  suffixIconColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150.0),
            child: Text(
              "Forgot password",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child:InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Day_five()));

                },
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
           const SizedBox(height: 20,),
          Center(
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child:  Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "No account",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Day_four()));

                      },
                      child: const Text(
                        "?  Signup here",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
