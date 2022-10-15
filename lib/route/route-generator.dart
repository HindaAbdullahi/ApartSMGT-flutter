import 'package:appart/screen/Add-empolyee.dart';
import 'package:appart/screen/home-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':
      return MaterialPageRoute(builder: (_)=> const HomeScreen());
        
       
       case '/add_empolyee' :
         return MaterialPageRoute(builder: (_)=> const AddEmpolyeScreen());
      default:
      return _errorRoute();
    }
  }
   static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
appBar: AppBar(
  title: const Text ("No route"),
  centerTitle: true,
),
body: const Center(
  child: Text("sorry was not found route",style: TextStyle(color: Colors.red,fontSize: 18.0)),

      ),

      );
    });
   }
} 