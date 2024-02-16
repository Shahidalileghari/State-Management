import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){

            },
                icon: const Icon(Icons.arrow_back,color: Colors.white,),
            ),
            title:const Text("New") ,
            centerTitle: true,
            backgroundColor: Colors.blue,

          ),
        body: const Center(child: Text("New ")),
        ),
      ),
    );
  }
}
