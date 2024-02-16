import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/ThemeProvider.dart';

import 'List.dart';

class Dart_Theme extends StatefulWidget {
  const Dart_Theme({super.key});

  @override
  State<Dart_Theme> createState() => _Dart_ThemeState();
}

class _Dart_ThemeState extends State<Dart_Theme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger=Provider.of<ThemeProvider>(context);
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Dark Theme"),
        centerTitle: true,
        // backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const All_Classes()));
          },
          icon: const Icon(Icons.arrow_back),
        ),


      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light mode"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("Dark mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: const Text("System mode"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme,
          ),
          const SizedBox(height: 30,),
          for(int i=0;i<18;i++)
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i=0;i<6;i++)
                const Icon(Icons.favorite),
              for (int i=0;i<6;i++)
                const Icon(Icons.favorite),

            ],
          )
        ],
      ),
    );
  }
}
