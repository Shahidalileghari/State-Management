import 'package:flutter/material.dart';

class Screen_two extends StatelessWidget {
  const Screen_two({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
          child: Scaffold  (
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back,color: Colors.white,),

              ),
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: const Text("Screen two"),
            ),
            body: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                  child: const Center(child: Text("I am screen two")),
                ),
              ),
            ),
          ),
        )
    );
  }
}