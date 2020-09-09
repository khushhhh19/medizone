import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Order Placed!'),
        titleSpacing: 0,
      ),
      body: Column(
          children: <Widget>[
            Image.asset('images/op.png'),
            Text('Your order placed !!',
              maxLines: 2,
              style: TextStyle(
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.aspectRatio*40,
              ),
            ),
            Padding(
              padding: MediaQuery.of(context).padding*1.5,
            ),
            Text('Your order has been placed successfully.',
            style: TextStyle(
              color: Colors.black26,
              fontSize: MediaQuery.of(context).size.aspectRatio*27,
            ),
            ),
            RichText(
              text: TextSpan(
                text: 'Please visit ',
                style: TextStyle(
                  color: Colors.black26,
                  fontSize: MediaQuery.of(context).size.aspectRatio*27,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'My Order',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.aspectRatio*27,
                          color: Colors.black
                      )
                  ),
                  TextSpan(text: ' page to check'),
                ],
              ),
            ),
            Text('the progress and more details.',
              style: TextStyle(
                color: Colors.black26,
                fontSize: MediaQuery.of(context).size.aspectRatio*27,
              ),
            ),
            SizedBox(
              height: height/5.2,
            ),
            ButtonTheme(
              height: height/15,
              minWidth: width/1.09,
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
                ),
                child: Text('CONTINUE SHOPPING'),
                elevation: 3,
              ),
            )

          ],
        ),
    );
  }
}