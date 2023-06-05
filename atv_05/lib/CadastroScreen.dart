import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'OxeQArti',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Nome',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Senha',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirmação de senha',
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Sou artista',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Switch(
                            value: false,
                            onChanged: (bool value) {
                              // Lógica para habilitar/desabilitar a opção de artista
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para realizar o cadastro
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff8c2c00),
                        ),
                        child: Text('Cadastrar'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}