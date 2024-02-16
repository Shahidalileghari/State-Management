import 'package:flutter/material.dart';
import 'package:flutter_api_project/Lesson_one.dart';

class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  State<Lessons> createState() => _LessonsState();
}

bool navb=false;

class _LessonsState extends State<Lessons> {
  @override


  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ),
            itemCount: lessonOne.length,

            itemBuilder: (context,index){

             return   Card(
               color: Colors.blueAccent,
               child: Column(
                 children: [
                   SizedBox(
                     width: 150,
                     height: 150,
                     child: ListTile(
                       title: Text(lessonOne[index]['name'].toString()),
                       subtitle: Text(lessonOne[index]['desc'].toString()),
                     )

                   )
                 ],
               ),
             );

        }
        ),
      )
    );
  }

  ///
//



//


}
