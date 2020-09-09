import 'package:flutter/material.dart';
import 'Cart.dart';
import 'package:flutter/gestures.dart';

class Card1 extends StatefulWidget {
  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cough Syrup'),
        titleSpacing: 0,
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
      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('images/cough.png',
              alignment: Alignment.topCenter,
              height: height*0.35,
              width: width,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Benylin Chesty Cough Syrup',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.aspectRatio*36,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share, color: Colors.grey,),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite, color: Colors.grey,),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Benylin',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.aspectRatio*30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                RaisedButton.icon(
                    onPressed: () {},
                    elevation: 0,
                    color: Colors.lightGreen,
                    label: Text('3.5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.aspectRatio*30,
                      ),
                    ),
                    icon: Icon(Icons.star,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.aspectRatio*33,)

                ),
                RichText(
                  text: TextSpan(text: 'Read all 125 reviews',
                    style: TextStyle(
                        color: Colors.pink
                    ),
                    recognizer: new TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height*0.09,
            width: width,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: width*0.007
                ),
                  bottom: BorderSide(
                      color: Colors.grey,
                      width: width*0.007
                  )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Price',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*30,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold
                    ),
                ),
                Text('₹199',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*30,
                  color: Colors.pink,
                      fontWeight: FontWeight.bold
                ),
                ),
                Text('Quantity',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*30,
                      color: Colors.black54,
                    fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_up),
                ),
                Text('1',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.aspectRatio*30,
                  fontWeight: FontWeight.bold
                ),)
                ,
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),
                color: Colors.white,
                child: Text('ADD TO CART',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*30,
                  color: Colors.pink
                ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                color: Colors.pink,
                child: Text('BUY NOW',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.aspectRatio*30,
                      color: Colors.white
                  ),
                ),
              )
            ],
          ),
          Text('PRODUCT INFO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.aspectRatio*35,
          ),
          ),
          Text('Benylin Chesty Cough Syrup is contraindicated in individuals with known hypersensitivity '
              'to the product or any of its constituents. Benylin Chesty Coughs (Original) is contraindicated '
              'in individuals with chronic or persistent cough, such as occurs with asthma, or where cough '
              'is accompanied by excessive secretions, unless directed by the physician. Benylin Coughs (Original) '
              'should not be administered to patients currently receiving monoamine oxidase inhibitors (MAOI) '
              'or those patients who have received treatment with MAOIs within the last two weeks.Not to be used'
              ' in children under the age of 12 years.',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.aspectRatio*27,
            ),
          ),

        ],
      )
    );
  }
}