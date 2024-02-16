import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'List.dart';

class State_Widget extends StatelessWidget {
  State_Widget({super.key});

  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless Widget"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const All_Classes()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ValueListenableBuilder(
              valueListenable: toggle, builder: (context,value,child)
          {
            return           Padding(
              padding: const EdgeInsets.all(12.0),
              child:    Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  obscureText: toggle.value,
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                  // maxLength: 10,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.grey,
                      labelText: "Password",
                      suffixIcon: InkWell(
                        onTap: (){
                          toggle.value = !toggle.value;
                        },
                        child: Icon(toggle.value? Icons.visibility:Icons.visibility_off_outlined),
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
              // child: TextFormField(
              //   // enabled: toggle.value,
              //   obscureText: toggle.value,
              //   decoration: InputDecoration(
              //     hintText: "Password",
              //     suffixIcon: InkWell(
              //         onTap: () {
              //           toggle.value = !toggle.value;
              //         },
              //         child: Icon(
              //             toggle.value ? Icons.visibility : Icons.visibility_off_outlined)),
              //
              //   ),
              // ),
            );

          }),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text(
                  _counter.value.toString(),
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 155.0, bottom: 30),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            _counter.value++;
          },
          child: const Icon(
            Icons.add_circle,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
