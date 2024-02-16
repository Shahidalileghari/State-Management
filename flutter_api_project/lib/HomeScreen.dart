import 'package:flutter/material.dart';
import 'package:flutter_api_project/Lessons.Dart.dart';
import 'package:flutter_api_project/Tests.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  bool navb=false;
  @override

  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        title: navb==true? _searchWidget(): const Padding(
          padding: EdgeInsets.only(top: 12.0),
          child: Text('My GRAMMAR'),
        ),
        backgroundColor: Colors.blue,
        centerTitle: false,

        actions: [
          // IconButton(onPressed: (){
          //
          //
          //
          // }, icon: const Icon(Icons.search,size: 30,color: Colors.white,),),
          InkWell(
              onTap: (){
                if(navb==false)
                  {
                    setState(() {
                      navb=true;

                    });
                  }
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 50.0,top: 12),
                child: Icon(Icons.search,size: 30,color:Colors.white,),
              ),),
          // IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,size: 30,color: Colors.white,),),
          // const Icon(Icons.more_vert,size: 30,color: Colors.white,)
        ],
        bottom: const TabBar(
          indicatorColor: Colors.red,
          indicatorWeight: 4,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),

          tabs: [
            Text("LESSONS"),
            Text("TESTS"),
          ],
        ),
      ),
      body: const TabBarView(
        children: [

          Lessons(),
          Tests(),



        ],
      ),
    ),


    );
  }

  Widget _searchWidget() {
    return Row(
      children: [
        InkWell(
            onTap: () {
              setState(() {
                navb = false;
              });
            },
            child: const Icon(Icons.arrow_back)),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Search",

                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none),
            ),
          ),
        ),
        // const SizedBox(
        //   width: 5,
        // ),
        // Container(
        //     width: 38,
        //     height: 38,
        //     decoration: BoxDecoration(
        //         color: Colors.black.withOpacity(0.1), shape: BoxShape.circle),
        //     child: const Icon(Icons.mic))
      ],
    );
  }

}
