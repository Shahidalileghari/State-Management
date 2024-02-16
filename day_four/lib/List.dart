import 'package:day_four/Drawer.dart';
import 'package:day_four/GridView.dart';
import 'package:day_four/List_View.dart';
import 'package:day_four/Page_View.dart';
import 'package:flutter/material.dart';

import 'Animated.dart';
import 'Day_five.dart';
import 'Day_four.dart';
import 'Day_nine.dart';
import 'Day_six.dart';
import 'Day_ten.dart';
import 'Login.dart';

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _ListsState();
}

class _ListsState extends State<Lists> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("List of all classes"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  Day_four()));
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: const Center(child: Text("Sign up page",style: TextStyle(fontSize: 24),)),
                  ),
                ),
                  const SizedBox(width: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  const login()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(child: Text("Login page",style: TextStyle(fontSize: 24),)),
                    ),
                  ),],
              ),

             const SizedBox(height: 20,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  const Day_five()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(child: Text("Main page",style: TextStyle(fontSize: 24),)),
                    ),
                  ),
                  const SizedBox(width: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>   Day_six()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(child: Text("Counting app",style: TextStyle(fontSize: 24),)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),


             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>    Day_nine()));
                   },
                   child: Container(
                     height: 50,
                     width: 150,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(20),
                     ),

                     child: const Center(child: Text("Day_nine",style: TextStyle(fontSize: 24),)),
                   ),
                 ),
                 const SizedBox(width: 20,),

                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>  Grid_View()));
                   },
                   child: Container(
                     height: 50,
                     width: 150,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(20),
                     ),

                     child: const Center(child: Text("Grid_View",style: TextStyle(fontSize: 24),)),
                   ),
                 ),
                 const SizedBox(height: 20,),
               ],
             ),
              const SizedBox(height: 20,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  List_View()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(child: Text("List_View",style: TextStyle(fontSize: 24),),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  const Page_View()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(child: Text("Page_View",style: TextStyle(fontSize: 24),),
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20,),


              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>   Day_ten()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(child: Text("S animation",style: TextStyle(fontSize: 24),),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>    Animated()));
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Center(child: Text("Animated",style: TextStyle(fontSize: 24),),
                      ),
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 20,),


             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>    const Drawer_settings()));
                   },
                   child: Container(
                     height: 50,
                     width: 150,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(20),
                     ),

                     child: const Center(child: Text("Drawer",style: TextStyle(fontSize: 24),),
                     ),
                   ),
                 ),
                 const SizedBox(width: 20,),

               ],
             )




            ],
          ),
        ),
      ),
    );
  }
}
