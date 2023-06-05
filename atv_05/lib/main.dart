import 'package:atv_05/HomeScreen.dart';
import 'package:atv_05/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'ChatScreen.dart';
import 'LoginScreen.dart';
import 'CadastroScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OxeQArti',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/cadastro': (context) => CadastroScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
