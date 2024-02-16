import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/FavoriteProvider.dart';

import 'FavoriteScreen.dart';
import 'List.dart';

class Favorite_App extends StatefulWidget {
  const Favorite_App({super.key});

  @override
  State<Favorite_App> createState() => _Favorite_AppState();
}

class _Favorite_AppState extends State<Favorite_App> {
  List<int> _selectedItems = [];

  Widget build(BuildContext context) {
    final providerItems=Provider.of<FavoriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite App"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const All_Classes()));
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions:  [
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const FavoriteScreen()));
              },
              child: const Icon(Icons.favorite,color: Colors.red,)),
           const SizedBox(width: 25,),

        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return  Consumer<FavoriteProvider>(builder: (context,value,child)

                  {
                    return ListTile(
                      onTap: () {
                        if(value.selectedItems.contains(index))
                          {
                            value.removeItems(index);
                          }
                         else{
                          providerItems.addItems(index);
                        }

                      },
                      title: Text("Items $index"),
                      trailing:providerItems.selectedItems.contains(index)
                          ? const Icon(Icons.favorite)
                          : const Icon(Icons.favorite_border_outlined),
                    );
                  }
                  );
                }),
          ),
        ],
      ),
    );
  }
}
