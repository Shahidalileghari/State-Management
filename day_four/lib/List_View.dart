import 'package:day_four/ListEntity.dart';
import 'package:flutter/material.dart';

class List_View extends StatefulWidget {
  const List_View({super.key});

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  final data = ListEntity.data_list;

  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List_View"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(data[index].image),
              title: Text(data[index].title),
              subtitle: const Text("Study hard"),
              trailing: Column(
                children: [
                  InkWell(
                    onTap: () {
                      function();
                    },
                    child: const Icon(Icons.favorite,color: Colors.red,)
                  ),
                  Text("$x"),
                ],
              ),
            );
          }),
    );
  }

  void function() {
    setState(() {
      x += 1;
    });
  }
}
