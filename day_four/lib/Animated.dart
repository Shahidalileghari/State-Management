
import 'package:flutter/material.dart';

import 'Day_four.dart';

class Animated extends StatefulWidget {
   Animated({super.key});


  @override



  State<Animated> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> with SingleTickerProviderStateMixin{




  late Animation<double> animation;
  late AnimationController controller;
  late Animation<Color?> col;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: const Duration(milliseconds: 1500), vsync: this);
    final anim = CurvedAnimation(
      curve: Curves.bounceIn,
      reverseCurve: Curves.easeIn,
      parent: controller,
    );

    animation = Tween<double>(begin: 0, end: 100).animate(anim)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
          if (col.value == Colors.red) {
            col = ColorTween(end: Colors.black, begin: Colors.green).animate(anim);
          } else {
            col = ColorTween(begin: Colors.blue, end: Colors.pink).animate(anim);
          }
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    col = ColorTween(
      begin: Colors.blue,
      end: Colors.pink,
    ).animate(anim);

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Animated"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: AnimatedBuilder(
        animation: animation,
        builder: (context,child){
          return Transform.translate(
            offset: Offset(0,animation.value),
            child: Center(
              child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: col.value,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  height: 100,
                  child: const Icon(Icons.favorite)
              ),
            ),

          );
        },
      )
    );
  }
}
