import 'package:day_four/Day_five.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'Login.dart';


class Day_four extends StatelessWidget {
   Day_four({super.key});


  @override
  int x=0;
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading:  InkWell(
              onTap: ()
              {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          title: const Text("Day four"),

          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:      Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           const SizedBox(height: 20,),

          const Text("Sign up here",style: TextStyle(color: Colors.blueGrey,fontSize: 34,fontWeight: FontWeight.bold),),
           const SizedBox(height: 10,),

           const Center(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Icon(Icons.facebook,size: 45,),
                 SizedBox(width: 12,),
                 Icon(Icons.chat_bubble,size: 45,),
                 SizedBox(width: 12,),

                 Icon(Icons.whatshot,size: 45,),


               ],
             ),
           ),

           const Padding(
             padding: EdgeInsets.all(8.0),
             child: Divider(thickness: 2,color: Colors.blue,),
           ),


           const SizedBox(height: 20,),

           Padding(
             padding: const EdgeInsets.all(12.0),
             child: TextField(
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                 hintText: "Name",
                 labelText: "Name",
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10)
                 ),
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.all(12.0),
             child: TextField(
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                   hintText: "Email",
                   labelText: "Email",
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.all(12.0),
             child: TextField(
               obscureText: true,
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                   hintText: "Enter password",
                   labelText: "Enter password",
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                   )
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.all(12.0),
             child: TextField(
               obscureText: true,
               keyboardType: TextInputType.name,
               decoration: InputDecoration(
                   hintText: "Confirm password",
                   labelText: "Confirm password",
                   enabledBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                   ),

               ),
             ),
           ),
           const SizedBox(height: 8,),


           Container(
             width: 100,
             height: 60,
             decoration: BoxDecoration(
               color: Colors.blue,
               borderRadius: BorderRadius.circular(20),
             ),

             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 InkWell(

                     onTap: (){

                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const Day_five()));
                     },

                     child: const Text("Sign up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),)
                 ),

               ],
             ),
           ),

           const SizedBox(height: 12,),


           Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               const Text("Already user",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
               InkWell(

                 onTap: (){

                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()));
                 },

                   child: const Text("? Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),)
               ),

             ],
                     ),
          )

         ],


        )
      ),
    );
  }
}

