import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:medizone/NonPrescrip.dart';
import 'package:medizone/Prescrip.dart';
import 'NavDrawer.dart';
import 'Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
//      width: width,
//      height: height,
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('MEDIZONE'),
          centerTitle: true,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cart()),
                );
              },
              icon: Icon(Icons.shopping_cart),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size(height*0.73, width*0.73),
            child: Column(
              children: <Widget>[
                Container(
                  child: SizedBox(
                      height: height*0.25,
                      width: width,
                      child: Carousel(
                        autoplay: false,
                        images: [
                          Image.asset('images/pic1.jpg', fit: BoxFit.fitWidth,),
                          Image.asset('images/pic2.jpg', fit: BoxFit.fitWidth,),
                          Image.asset('images/pic3.png', fit: BoxFit.fitWidth,),
                        ],
                        dotSize: MediaQuery.of(context).size.aspectRatio*8,
                        dotSpacing: MediaQuery.of(context).size.aspectRatio*20,
                        dotColor: Colors.white,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.white70.withOpacity(0),
                      )
                  ),
                ),
                Padding(
                  padding: MediaQuery.of(context).padding*0.6
                ),
                Card(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Container(
                    height: height/18,
                    width: width*0.97,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.search,
                              color: Colors.black54),
                          hintText: 'Search prescription or OTC products',
                          hintStyle: TextStyle(
                              color: Colors.black12
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: MediaQuery.of(context).padding*0.5
                ),
                TabBar(
                  tabs: <Widget>[
                    Text('Non-Prescriptions',
                      style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*30,
                    ),
                    ),
                    Text('Prescriptions',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*30,
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            NonPrescrip(),
            Prescrip(),
          ],
        )
      ),
    );
  }
}