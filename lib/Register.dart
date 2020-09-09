import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:medizone/HomePage.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}


class _RegisterState extends State<Register> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void validate() {
    if(formKey.currentState.validate()) {
      print('Validated');
    }
    else {
      print('Not Validated');
    }
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        titleSpacing: 0,
      ),

      body: Form(
        key: formKey,
        autovalidate: true,

        child: ListView(
          padding: EdgeInsets.all(25),
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Create your account on Medizone',
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.aspectRatio*35,
                    ),
                )
              ],
            ),

            Padding(
                padding: MediaQuery.of(context).padding*1
            ),

            TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  labelText: 'Name',
                  prefixIcon: Icon(Icons.person),
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

            TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                validator: MultiValidator(
                    [
                      RequiredValidator(errorText: 'Required'),
                      EmailValidator(errorText: 'Not a valid email')
                    ]
                )
            ),

            Padding(
                padding: MediaQuery.of(context).padding*0.5
            ),

            TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Mobile Number',
                  prefixIcon: Icon(Icons.phone),
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

            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.vpn_key),
                ),
                validator: MultiValidator(
                    [
                      RequiredValidator(errorText: 'Required'),
                      MinLengthValidator(6, errorText: 'Should be at least 6 characters'),
                      MaxLengthValidator(15, errorText: 'Not more than 15 characters')
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
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              color: Colors.pink,
              child: Text('Register',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),

            Padding(
                padding: MediaQuery.of(context).padding*0.5
            ),

            RichText(
              text: TextSpan(text: 'By registering, agree to ',
                  style: TextStyle(
                      color: Colors.black
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: TextStyle(
                          color: Colors.pink
                      ),
                      recognizer: new TapGestureRecognizer()..onTap = () {},
                    ),
                  ]
              ),
            ),

          ],
        ),

      )
    );

  }

}