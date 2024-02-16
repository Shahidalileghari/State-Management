import 'package:flutter/material.dart';
import 'package:routing/Home.dart';
import 'package:routing/Routing.dart';
import 'package:routing/RoutingNames.dart';

import 'Screen_one.dart';
import 'Screen_two.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutingNames.Routing:
        return MaterialPageRoute(builder: (context) => const Routing());

      case RoutingNames.Home:
        return MaterialPageRoute(builder: (context) => const Home());


      case RoutingNames.Screen_one:
        return MaterialPageRoute(builder: (context) => const Screen_one());

      case RoutingNames.Screen_two:
        return MaterialPageRoute(builder: (context) => const Screen_two());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Text("Please"),
          );
        });
    }
  }
}
