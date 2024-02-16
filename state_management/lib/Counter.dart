import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier{
  int _counter=0;
  int _decrease=100;
  int _two=340;

  String _shahid = "Shahid";


  int get decrease  => _decrease;
  int get count => _counter;
  int get two => _two;
  String get shahid => _shahid;

  void setCount()
  {
    _counter+=0;
    notifyListeners();


  }



  void setDecrease()
  {
    _decrease-=20;
    notifyListeners();
  }

  void setTwo()
  {
    _two-=90;
    notifyListeners();
  }

  void setShahid()
  {
    _shahid+=" Ali Laghari";

    notifyListeners();
  }

}