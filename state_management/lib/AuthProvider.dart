import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' ;

class AuthProvider with ChangeNotifier{

  bool _loading=false;
  bool get loading=>_loading;

  setlocal(bool value)
  {
    _loading=value;
    notifyListeners();
  }


  void login(String email, String password ) async{
    setlocal(true);
    try{
      Response response= await post(Uri.parse("https://reqres.in/api/login"),

      body: {
        'email':email,
        'password':password,
      }


      );

      if(response.statusCode==200)
        {
          print("Successfully logged in");
          setlocal(false);
        }
      else{
        print("Successfully not logged in");
        setlocal(false);

      }


    }catch(e)
    {
      print(e.toString());
      setlocal(false);

    }
  }

}