import 'package:flutter/material.dart';
import 'package:medizone/HelpCenter.dart';
import 'package:medizone/OrderPlaced.dart';
import 'HomePage.dart';
import 'Wishlist.dart';
import 'MyAccount.dart';
import 'Login.dart';
import 'Register.dart';
import 'OrderPlaced.dart';
import 'ShopBy.dart';
import 'HelpCenter.dart';
import 'start.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(),
          Container(
            height: height*0.15,
            width: width,
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.shopping_basket, color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OrderPlaced()),
                        );
                      },
                    ),
                    Text('My Orders',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*25,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.account_circle, color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAccount()),
                        );
                      },
                    ),
                    Text('My Account',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.aspectRatio*25,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.location_on, color: Colors.white,),
                      onPressed: () {},
                    ),
                    Text('My Location',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.aspectRatio*25,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.home, color: Colors.pink,),
            title: Text('Home', style: TextStyle(fontSize: MediaQuery.of(context).size.aspectRatio*25,),),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              )
            },
          ),

          ListTile(
            leading: Icon(Icons.layers, color: Colors.pink,),
            title: Text('Shop by Category', style: TextStyle(fontSize: MediaQuery.of(context).size.aspectRatio*25,),),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopBy()),
              )
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite, color: Colors.pink,),
            title: Text('My Wishlist', style: TextStyle(fontSize: MediaQuery.of(context).size.aspectRatio*25,),),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Wishlist()),
              )
            },
          ),

          ListTile(
            leading: Icon(Icons.help, color: Colors.pink,),
            title: Text('Help Center', style: TextStyle(fontSize: MediaQuery.of(context).size.aspectRatio*25,),),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpCenter()),
              )
            },
          ),

          ListTile(
            leading: Icon(Icons.power_settings_new, color: Colors.pink,),
            title: Text('Logout', style: TextStyle(fontSize: MediaQuery.of(context).size.aspectRatio*25,),),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Start()),
              )
            },
          ),

        ],
      ),
    );
  }

}