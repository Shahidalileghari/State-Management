import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:state_management/AuthProvider.dart';
import 'package:state_management/ExampleOneProvider.dart';
import 'package:state_management/FavoriteProvider.dart';
import 'package:state_management/List.dart';
import 'package:state_management/ThemeProvider.dart';


import 'Counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


       return MultiProvider(
         providers: [
           ChangeNotifierProvider(create: (_)=>Counter()),
           ChangeNotifierProvider(create: (_)=>ExampleOneProvider()),
           ChangeNotifierProvider(create: (_)=>FavoriteProvider()),
           ChangeNotifierProvider(create: (_)=>ThemeProvider()),
           ChangeNotifierProvider(create: (_)=>AuthProvider()),
         ],

           child: Builder(builder: (BuildContext context)
             {
               final themeChanger=Provider.of<ThemeProvider>(context);


               return MaterialApp(
                 debugShowCheckedModeBanner: false,
                 title: 'Flutter Demo',
                 themeMode: themeChanger.themeMode,
                 theme: ThemeData(
                   brightness: Brightness.light,

                   primarySwatch: Colors.red,

                   appBarTheme: const AppBarTheme(
                     backgroundColor: Colors.blue,
                   ),

                 ),
                 darkTheme: ThemeData(
                   brightness: Brightness.dark,
                   primarySwatch: Colors.yellow,
                   primaryColor: Colors.purple,

                   appBarTheme: const AppBarTheme(
                     backgroundColor: Colors.teal,
                   ),
                 ),
                 home: const All_Classes(),
               );
             },
           )
       );


  }
}


