import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 163, 33, 243),
            ),
            child: Text(
              'OxiQArti',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text('Voltar'),
            onTap: () {
              Navigator.pop(context); // Voltar para a tela anterior
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () {
              // Adicione aqui a lógica para sair da aplicação
            },
          ),
        ],
      ),
    );
  }
}