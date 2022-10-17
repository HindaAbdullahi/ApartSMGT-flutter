
import 'package:flutter/material.dart';
import 'package:appart/screen/home-screen.dart';
import 'package:appart/screen/login_and_signup/login_screen.dart';
import 'package:appart/screen/login_and_signup/profile_screen.dart';
import 'package:appart/screen/login_and_signup/user-screen.dart';
import 'package:appart/screen/welcome-screen.dart';

void main() async{
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property Management App',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(),
        'home': (context) => HomeScreen(),
        'login_screen': (context) => LoginPage(),
        
      },
      theme: ThemeData(primarySwatch: Colors.blueGrey),
  
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen();
  }
}