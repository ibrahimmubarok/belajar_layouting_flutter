import 'package:flutter/material.dart';
import 'package:belajar_layouting/bottom_app_bar.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgets = [];

  _HomePageState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Padding(
        padding: EdgeInsets.all(16),
        child: const Text("New Game Available",
            style: TextStyle(fontWeight: FontWeight.w400, letterSpacing: 2.0)),
      ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Belajar Layouting')),
        bottomNavigationBar: const MyBottomNav(),
        body: Container(
          color: const Color(0xFFEFF4F8),
          child: Center(
            child: ListView(
              children: <Widget>[
                const Center(
                  child: const Text(
                    'GAME STORE',
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widgets
                )
              ],
            ),
          ),
        ));
  }
}
