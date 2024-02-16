
import 'package:flutter/material.dart';
import 'package:routing/New.dart';

import 'Routing.dart';
import 'Screen_two.dart';

class Screen_one extends StatelessWidget {
  const Screen_one({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(

          child: Scaffold  (
            appBar: AppBar(

              leading: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const New()));
                },
                icon: const Icon(Icons.arrow_back,color: Colors.white,),

              ),
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: const Text("Screen one"),
            ),
            body: InkWell(
              onTap: (){
                Navigator.push(context , MaterialPageRoute(builder: (context)=>const Screen_two()));
              },
              child: Center(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.green,
                  child: const Center(child: Text("I am screen one")),
                ),
              ),
            ),
          ),
        )
    );
  }
}