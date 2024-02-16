import 'package:flutter/material.dart';

import 'Screen_one.dart';

class Routing extends StatefulWidget {
  const Routing({super.key});

  @override
  State<Routing> createState() => _RoutingState();
}

class _RoutingState extends State<Routing> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,

            title: const Text("Screen routing"),
          ),

          body: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Screen_one()));
              },
              child: const Text("Routing screen"),
          ),
        ),
      ),
    );
  }
}
