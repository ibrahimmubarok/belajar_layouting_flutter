import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
      height: 60.0,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(children: <Widget>[
              const Icon(Icons.home),
              const Text('Home', style: TextStyle(fontSize: 12.0))
            ]),
            Column(children: <Widget>[
              const Icon(Icons.search, color: Colors.black45),
              const Text('Search', style: TextStyle(fontSize: 12.0))
            ]),
            Column(
              children: <Widget>[
                const Icon(Icons.shop, color: Colors.black45),
                const Text(
                  'Wishlist',
                  style: TextStyle(fontSize: 12.0),
                )
              ],
            ),
            Column(children: <Widget>[
              const Icon(Icons.shopping_cart, color: Colors.black45),
              const Text('Cart', style: TextStyle(fontSize: 12.0))
            ])
          ],
        ),
      ),
    ));
  }
}