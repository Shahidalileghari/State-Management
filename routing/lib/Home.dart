import 'package:flutter/material.dart';
import 'package:routing/Routing.dart';
import 'package:routing/RoutingNames.dart';

import 'Routes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: RoutingNames.Home,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
