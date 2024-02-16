import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Day_six extends StatefulWidget {
  Day_six({super.key});

  @override
  State<Day_six> createState() => _Day_sixState();
}

class _Day_sixState extends State<Day_six> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day six"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading:  InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(EvaIcons.moreVertical))
        ],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(  "counter value $value"),
            const SizedBox(height: 12,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  increment();
                }, child: const Icon(Icons.add,size: 30,)),
                const SizedBox(width: 20,),
                ElevatedButton(onPressed: () {
                  decrement();
                }, child: const Icon(Icons.remove,size: 30,)),
              ],
            ),
          const SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              doubleclickvalue(),
              const  SizedBox(width: 30,),
              doubleReduceValue(),
            ],
          )


          ],
        ),
      ),
    );
  }

  void increment()
  {
    setState(() {
      value+=1;
    });
  }

  void decrement()
  {
    setState(() {
      value-=1;
    });
  }

  Widget doubleclickvalue()
  {
    return InkWell(
      onTap: (){
        setState(() {
          value+=2;
        });
      },
      child: Container(
        height: 50,
        width: 80,
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          color: Colors.blue,
            borderRadius: BorderRadius.circular(20),

        ),
        child: const Text("+2"),

      ),
    );
  }

  Widget doubleReduceValue()
  {
    return InkWell(
      onTap: (){
        setState(() {

          value-=2;

        });
      },
      child: Container(
        height: 50,
        width: 80,

        alignment: Alignment.center,
        decoration:  BoxDecoration(
            color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text("-2"),

      ),
    );
  }
}
