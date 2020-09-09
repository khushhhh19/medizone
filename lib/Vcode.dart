import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'Register.dart';

class Vcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification Code'),
        titleSpacing: 0,
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(25),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Please enter verification code sent',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.aspectRatio*30,
                  ),
                ),
                Text('on your mobile number you resigtered',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.aspectRatio*30,
                  ),
                ),
              ],
            ),

            Padding(
                padding: MediaQuery.of(context).padding*1
            ),

            TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                hintText: 'Verification Code',
              ),
            ),

            Padding(
                padding: MediaQuery.of(context).padding*0.5
            ),

            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              color: Colors.pink,
              child: Text('Verify',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),

        RichText(
          text: TextSpan(text: 'Resend',
              style: TextStyle(
                color: Colors.pink
              ),
              recognizer: new TapGestureRecognizer()..onTap = () {},
              ),
        ),

          ],
        ),
      ),
    );
  }
}