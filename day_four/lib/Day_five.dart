import 'package:day_four/Day_six.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Day_five extends StatelessWidget {
  const Day_five({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title:  const Text("Day five"),
        centerTitle: true,


        backgroundColor: Colors.blue,
        leading:  InkWell(
            onTap: ()
            {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),

        actions: [
          IconButton(onPressed: (){}, icon: const Icon(EvaIcons.moreVertical))
        ],

      ),
      backgroundColor: Colors.blueGrey,

      body:   Stack(
        children: [
          const Positioned(
            top: 35,
            right: 10,
            left: 10,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.close),
                Row(
                  children: [
                    Icon(Icons.queue_music),
                    SizedBox(width: 5,),
                    Text("Sound"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: [
                      Icon(Icons.flip_camera_ios_rounded),
                      Text("flip")
                    ],
                  ),
                ),
              ],

            ),
          ),
          const Positioned(
            right: 10,
            top: 90,
            child: Column(
              children: [
                Icon(Icons.shutter_speed),
                Text("speed"),
                SizedBox(height: 20,),

                Icon(Icons.card_membership),
                Text("beauty"),
                SizedBox(height: 20,),

                Icon(Icons.filter),
                Text("filter"),
                SizedBox(height: 20,),

                Icon(Icons.timer),
                Text("Time"),
                SizedBox(height: 20,),

                Icon(Icons.flashlight_on),
                Text("flash"),
                SizedBox(height: 20,),
              ],
            ),
          ),

          Positioned(
              bottom: 20,
              left: 15,
              right: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.image),
                  Text("image"),
                ],
              ),

              Container(
                height: 80,
                width: 80,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(60),

                ),
                child: Container(
                 height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black,width: 2)

                  ),
                ),
              ),

              const Column(
                children: [
                  Icon(Icons.upload_file),
                  Text("upload"),
                ],
              ),



            ],
          ))

        ],
      ) ,
    );
  }
}
