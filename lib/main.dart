
import 'package:flutter/material.dart';
import 'package:appart/screen/home-screen.dart';
import 'package:appart/screen/add-guarantor-screen.dart';
import 'package:appart/screen/guarantor.dart';
import 'package:appart/screen/update-guarantor-scree.dart';
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
        // 'login_screen': (context) => LoginPage(),
        'guarantors':   (context)=> GuarantorList(),
        'add_guarantor' :  (context)=> AddGuarantorScreen(),
        'update_guarantor' :  (context)=> UpdateGuarantorScreen(),
          // 'apartments':   (context)=> GuarantorList(),
        // '/add_apartment' :  (context)=> AddGuarantorScreen(),
        // '/update_apartment' :  (context)=> UpdateGuarantorScreen(),
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
    return GuarantorList();
  }
}