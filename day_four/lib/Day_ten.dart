import 'package:flutter/material.dart';

import 'dart:math' as m;

class Day_ten extends StatefulWidget {
  const Day_ten({super.key});

  @override
  State<Day_ten> createState() => _Day_tenState();
}

class _Day_tenState extends State<Day_ten> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  late Animation<Color?> col;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
      final anim=CurvedAnimation( curve: Curves.bounceIn,reverseCurve: Curves.easeIn,parent: controller);
    animation = Tween<double>(begin: 0, end: 100).animate(anim)..addListener(() {
      setState(() {

      });
    })..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
        if(col.value==Colors.red){
          col=ColorTween(
            end: Colors.black,
            begin: Colors.green
          ).animate(anim);
        }
        else{
          col=ColorTween(
            begin: Colors.blue,
            end: Colors.pink,
          ).animate(anim);
        }

      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    col=ColorTween(
      end: Colors.red,
      begin: Colors.blue

    ).animate(anim);


    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple animation"),
        // leading:  InkWell(
        //   onTap: (){
        //     Navigator.pop(context);
        //   },
        //     child: const Icon(Icons.arrow_back)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Transform.scale(
                       scale: animation.value,
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

              ),
            ],
          )
          








        ],
      ),
    );
  }
}
