import 'package:flutter/material.dart';
import 'package:atv_05/BottonNavigationBarWidiget.dart';
import 'MapBackgroud.dart';
import 'SideDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OxiQArti'),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer(); // Abre o SideDrawer
              },
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          MapBackground(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavigationBarWidget(),
          ),
        ],
      ),
      endDrawer: SideDrawer(), // Adiciona o SideDrawer no lado direito
    );
  }
}