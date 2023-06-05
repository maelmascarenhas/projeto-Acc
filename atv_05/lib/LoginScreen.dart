import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff520155), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'OxeQArti',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xfffff9f9),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: LoginForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Login',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Senha',
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/cadastro'); // Navegar para a página de cadastro
          },
          child: Text(
            'Esqueceu a senha',
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home'); // Navegar para a página inicial
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
          ),
          child: Text('Login'),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}