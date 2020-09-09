import 'package:flutter/material.dart';
import 'Cart.dart';

class Wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(

      appBar: AppBar(
        title: Text('My Wishlist'),
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
      ),

      body: Container(
        color: Colors.black12,
        child: Center(
          child: Column(
            children: <Widget>[

              Card(
                  elevation: 5,
                  child: Container(
                    height: height*0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        const ListTile(
                          leading: Image(image: AssetImage('images/cough.png'),),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                          ),
                          title: Text('Benylin Chesty Cough Syrup',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          subtitle: Text('Benylin',
                            style: TextStyle(
                                color: Colors.grey,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            Text('(125 Reviews)',
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            ),
                            Text('₹199',
                            style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.aspectRatio*30
                            ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}