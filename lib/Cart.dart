import 'package:flutter/material.dart';
import 'HomePage.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        elevation: 0,
        titleSpacing: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: Icon(Icons.clear),
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
                          subtitle: Text('₹199',
                            style: TextStyle(
                            color: Colors.pink,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('Quantity',
                              style: TextStyle(
                                fontSize: MediaQuery.of(context).size.aspectRatio*25,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.keyboard_arrow_up),
                              onPressed: () {},
                            ),
                            Text('1', style: TextStyle(fontSize: MediaQuery.of(context).size.aspectRatio*25,),),
                            IconButton(
                              icon: Icon(Icons.keyboard_arrow_down),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Total',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.aspectRatio*30,
                  ),
                  ),
                  Text('₹199.00',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.aspectRatio*40,
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Proceed to Checkout', style: TextStyle(fontSize: MediaQuery.of(context).size.aspectRatio*30,),),
                    color: Colors.pink,
                    textColor: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}