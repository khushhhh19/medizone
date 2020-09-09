import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'Vcode.dart';
import 'Login.dart';
import 'package:flutter/gestures.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEDIZONE'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          FlatButton(
            child: Text('Skip',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.aspectRatio*35,
            ),
            ),
            textColor: Colors.white,
            color: Colors.pink,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          )
        ],
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(25),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Please provide your mobile number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.aspectRatio*30,
                  ),
                ),
                Text('to Login/Signup on Medizone',
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
                hintText: 'Mobile Number',
              ),
              validator: MultiValidator(
                  [
                    RequiredValidator(errorText: 'Required'),
                  ]
              )
            ),

            Padding(
                padding: MediaQuery.of(context).padding*0.5
            ),

            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Vcode()),
                );
              },
              color: Colors.pink,
              child: Text('Continue',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),

            Padding(
                padding: MediaQuery.of(context).padding*0.5
            ),

        RichText(
          text: TextSpan(text: 'Already registered? ',
              style: TextStyle(
                  color: Colors.black
              ),
              children: [
                TextSpan(
              text: 'Click here',
              style: TextStyle(
                  color: Colors.pink
              ),
              recognizer: new TapGestureRecognizer()..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
                TextSpan(
                  text: ' to Login',
                  style: TextStyle(
                      color: Colors.black
                  ),
                )
          ]
          ),
        ),

          ],
        ),
      ),
    );
  }
}