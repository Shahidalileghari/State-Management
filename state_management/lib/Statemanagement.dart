import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Counter.dart';
import 'dart:async';

import 'package:state_management/List.dart';

class Statemanagement extends StatefulWidget {
  const Statemanagement({super.key});

  @override
  State<Statemanagement> createState() => _StatemanagementState();
}

class _StatemanagementState extends State<Statemanagement> {
  @override
  void initState()
  {
    super.initState();
    final providerclass=Provider.of<Counter>(context,listen: false);

    Timer.periodic(const Duration(seconds: 0), (timer) {
     providerclass.setCount();
    }

    );


  }

  Widget build(BuildContext context) {
    final providerclass=Provider.of<Counter>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Introduction"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const All_Classes()));
        }, icon: const Icon(Icons.arrow_back),),
      ),
      body: Center(
        child: Consumer<Counter>(builder: (context,value,child)
        {
          return Text(providerclass.count.toString(),style: const TextStyle(fontSize: 24),);


        }),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 150.0, bottom: 30),
        child: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            providerclass.setCount();


          },
          child: const Center(
            child: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
