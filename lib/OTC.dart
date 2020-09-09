import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Card1.dart';
import 'Cart.dart';

class otc extends StatefulWidget {
  @override
  _otcState createState() => _otcState();
}

class _otcState extends State<otc> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text('OTC Medicines'),
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
      ),
      body: Container(
        child: GridView.count(
            crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Card1()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/cough.png', height: height*0.16, width: width,),
//                         IconButton(
//                           onPressed: () {
//                           },
//                           icon: Icon(Icons.favorite, color: Colors.grey,),
//                         ),
                          Text('Benylin Chesty Cough Syrup',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.aspectRatio*24.5,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton.icon(
                                  onPressed: () {},
                                  elevation: 0,
                                  color: Colors.lightGreen,
                                  label: Text('3.5',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: MediaQuery.of(context).size.aspectRatio*30
                                    ),
                                  ),
                                  icon: Icon(Icons.star,
                                    color: Colors.white,
                                    size: MediaQuery.of(context).size.aspectRatio*30,
                                  )
                              ),
                              Text('₹199',
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*30,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}