import 'package:day_four/ListEntity.dart';
import 'package:flutter/material.dart';

class Page_View extends StatelessWidget {
  const Page_View({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: PageView.builder(
        itemCount:ListEntity.data_list.length,
        itemBuilder: (context,index){
          return Container(
            decoration: const BoxDecoration(
              color: Colors.grey
            ),
            child: Center(
                child: Text("Page ${ListEntity.data_list[index].title}"),
            ),
          );
        },

      ),
    );
  }
}
