import 'package:flutter/material.dart';

class Prescrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('images/phone.png', height: 100, width: 100,),
            Column(
              children: <Widget>[
                Text('Buying medicine made',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*40,
                      color: Colors.pink
                  ),
                ),
                Text('easy with Medizone',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*40,
                      color: Colors.pink
                  ),
                ),
              ],
            ),
            Padding(
              padding: MediaQuery.of(context).padding*30,
            )
          ],
        ),
    );
  }
}