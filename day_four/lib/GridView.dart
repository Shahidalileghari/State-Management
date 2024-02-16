import 'package:day_four/ListEntity.dart';
import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
   Grid_View({super.key});
    final data=ListEntity.data_list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // body: GridView.count(
      //   crossAxisCount: 2,
      //   children: const [
      //     Card(
      //       color: Colors.red,
      //       child: Center(child: Text("Flutter")),
      //     ),
      //     Card(
      //       color: Colors.blue,
      //       child: Center(child: Text("Flutter")),
      //
      //     ),
      //     Card(
      //       color: Colors.black,
      //       child: Center(child: Text("Flutter")),
      //
      //     ),
      //     Card(
      //       color: Colors.green,
      //       child: Center(child: Text("Flutter")),
      //
      //     ),
      //
      //     Card(
      //       color: Colors.teal,
      //       child: Center(child: Text("Flutter")),
      //     ),
      //     Card(
      //       color: Colors.orange,
      //       child: Center(child: Text("Flutter")),
      //
      //     ),
      //     Card(
      //       color: Colors.grey,
      //       child: Center(child: Text("Flutter")),
      //
      //     ),
      //     Card(
      //       color: Colors.pink,
      //       child: Center(child: Text("Flutter")),
      //
      //     ),
      //
      //   ],
      // ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ),
          itemCount: data.length,
          itemBuilder: (context,index)
          {
            return Card(
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                      width: 150,
                      height: 150,
                      child: Image.asset(data[index].image)
                  ),
                  Center(
                    child: Text(data[index].title),
                  ),
                ],
              ),
            );
          }

      ),

    );
  }
}
