import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.black12,
      child: ListView(
        children: <Widget>[
          Container(
              height: height/9,
              width: width/1.03,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('XXXX XXXX XXXX 5887',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*32,
                      ),
                    ),
                    Image.asset('images/visa.png', width: width/6, height: height/6,)
                  ],
                ),
              )
          ),
          Container(
              height: height/9,
              width: width/1.03,
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('XXXX XXXX XXXX 5887',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*32,
                      ),
                    ),
                    Image.asset('images/mastercard.png', width: width/4, height: height/4,)
                  ],
                ),
              )
          ),
          Container(
              height: height/2,
              width: width/1.03,
              child: Card(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: 'Card Type',
                      ),
                    ),
                    TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: 'Card Number',
                      ),
                    ),
                    TextFormField(
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: 'Name on Card',
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}