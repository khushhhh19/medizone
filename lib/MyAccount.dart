import 'package:flutter/material.dart';
import 'package:medizone/MyProfile.dart';
import 'Cart.dart';
import 'MyAddress.dart';
import 'MyCards.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('My Account'),
            titleSpacing: 0.0,
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cart()),
                  );
                },
                icon: Icon(Icons.shopping_cart),
              )
            ],
            bottom: TabBar(
                    tabs: <Widget>[
                      Text('My Profile',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.aspectRatio*30,
                        ),
                      ),
                      Text('My Cards',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.aspectRatio*30,
                        ),
                      ),
                      Text('My Address',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.aspectRatio*30,
                        ),
                      ),
                    ],
                  ),
          ),
        body: TabBarView(
          children: <Widget>[
            MyProfile(),
            MyCards(),
            MyAddress(),
          ],
        ),
      ),
    );
  }
}