import 'package:day_four/ListEntity.dart';
import 'package:flutter/material.dart';

class Day_nine extends StatelessWidget {
   Day_nine({super.key});

  final data=ListEntity.data_list;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("day nine"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: data.length,
        itemBuilder: (context,index){
          return ListTile(
            leading:  Container(
              width: 45,
              height: 45,
              child:Image.asset("assets/pic.png")
            ),
            trailing: const Icon(Icons.favorite,color: Colors.red,),
            title: Text("Title index $index"),
            subtitle: const Text("Using this file"),

          );
        },
        physics: const ScrollPhysics(),
        // children: [
        //
        //   ListTile(
        //     title: const Text("title"),
        //     subtitle: const Text("Subtitle "),
        //     leading: Container(
        //
        //         width: 40,
        //         height: 40,
        //         decoration: const BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: Colors.grey
        //         ),
        //         child: const Center(child: Text("leading"),
        //         ),
        //     ),
        //     trailing: const Icon(Icons.favorite_border,color: Colors.red,)
        //   ),
        //   ListTile(
        //       title: const Text("title"),
        //       subtitle: const Text("Subtitle "),
        //       leading: Container(
        //
        //         width: 40,
        //         height: 40,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.grey
        //         ),
        //         child: const Center(child: Text("leading"),
        //         ),
        //       ),
        //       trailing: const Icon(Icons.favorite_border,color: Colors.red,)
        //   ),
        //   ListTile(
        //       title: const Text("title"),
        //       subtitle: const Text("Subtitle "),
        //       leading: Container(
        //
        //         width: 40,
        //         height: 40,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.grey
        //         ),
        //         child: const Center(child: Text("leading"),
        //         ),
        //       ),
        //       trailing: const Icon(Icons.favorite_border,color: Colors.red,)
        //   ),
        //   const Padding(
        //     padding: EdgeInsets.all(12.0),
        //     child: Text("Heading widget or simple text"),
        //   ),
        //   const SizedBox(height: 6,),
        //    Padding(padding: const EdgeInsets.all(8),
        //
        //   child: Container(
        //     width: 40,
        //     height: 40,
        //     decoration: const BoxDecoration(
        //       color: Colors.red,
        //     ),
        //
        //
        //   ),
        //    ),
        //  const Padding(
        //    padding: EdgeInsets.all(10.0),
        //    child: Text("Lorem Ipsum Generator. Generate Lorem Ipsum placeholder text. Select the number of characters, words, sentences or paragraphs, and hit generate"),
        //  ),
        // ],
      ),

    );
  }
}
