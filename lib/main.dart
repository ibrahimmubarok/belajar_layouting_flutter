import 'package:flutter/material.dart';
import 'package:belajar_layouting/bottom_app_bar.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const MyBottomNav(),
        body: Container(
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 16.0),
              const SizedBox(height: 16.0),
              const SizedBox(height: 16.0),
              const SizedBox(height: 16.0),
            ],
          ),
        ));
  }
}