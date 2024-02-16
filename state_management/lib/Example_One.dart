import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/ExampleOneProvider.dart';
import 'package:state_management/List.dart';

class Example_One extends StatefulWidget {
  const Example_One({super.key});

  @override
  State<Example_One> createState() => _Example_OneState();
}

class _Example_OneState extends State<Example_One> {
  @override

  Widget build(BuildContext context) {
    final providerClass=Provider.of<ExampleOneProvider>(context,listen: true);

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Example_one"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const All_Classes()));
        }, icon: const Icon(Icons.arrow_back),),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return Slider(
                max: 1,
                min: 0,
                value: value.value, onChanged: (val){
              providerClass.setValue(val);
            });
          }),
          Consumer<ExampleOneProvider>(builder: (context,value,child){
            return  Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:  BoxDecoration(
                      color: Colors.green.withOpacity(value.value),
                    ),
                    child: const Center(
                      child: Text("Cont one"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:  BoxDecoration(
                      color: Colors.red.withOpacity(value.value),
                    ),
                    child: const Center(
                      child: Text("Cont two"),
                    ),
                  ),
                ),
              ],
            );
          })


        ],
      ),
    );
  }
}
