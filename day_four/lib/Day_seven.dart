import 'package:flutter/material.dart';

class Day_seven extends StatefulWidget {
  const Day_seven({super.key});

  @override
  State<Day_seven> createState() => _Day_sevenState();
}

class _Day_sevenState extends State<Day_seven> {
  String data="";
  double h=100;
  double w=100;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
        centerTitle: true,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: h,
              width: w,
              curve: Curves.bounceOut,
              duration: const Duration(milliseconds: 300),
              transform: Matrix4.rotationZ(100),
              color: Colors.blue,
            ),
            const SizedBox(height: 20,),
            Text("Data :$data"),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                call();
              },
              child: Container(
                width: 250,
                height: 80,
                decoration: const BoxDecoration(
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text("Click here",style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
void call()
{
  setState(() {
    w+=50;
    h+=50;
    data="Function has been called, 2nd method ${calculate(223, 234)}";
  });
}

int calculate(int x, int y)
{
  return  x+y;
}

}
