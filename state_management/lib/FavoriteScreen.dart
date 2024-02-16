import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Favorite_App.dart';

import 'FavoriteProvider.dart';
import 'List.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
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
                MaterialPageRoute(builder: (context) => const Favorite_App()));
          },
          icon: const Icon(Icons.arrow_back),
        ),

      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: providerItems.selectedItems.length,
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
