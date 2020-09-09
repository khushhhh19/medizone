import 'package:flutter/material.dart';
import 'OTC.dart';

class NonPrescrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          Card(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => otc()),
                );
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width/3,
                    height: height/5,
                    child: Image.asset('images/otc.png'),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text('OTC Medicines',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*23,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width/3,
                    height: height/5,
                    child: Image.asset('images/dia.png'),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text('Diabetes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*23,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width/3,
                    height: height/5,
                    child: Image.asset('images/care.png'),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text('Personal Care',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*23,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width/3,
                    height: height/5,
                    child: Image.asset('images/baby.png'),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text('Baby & Mother',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*23,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width/3,
                    height: height/5,
                    child: Image.asset('images/aid.png'),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text('Health Aid',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*23,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width/3,
                    height: height/5,
                    child: Image.asset('images/well.png'),
                  ),
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Text('Wellness',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.aspectRatio*23,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}