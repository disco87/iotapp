import 'package:flutter/material.dart';


class Manual extends StatefulWidget {
  @override
  _ManualState createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('수동 조작'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: <Widget>[
            Container(
              height: constraints.constrainHeight() * 0.4,
              width: constraints.constrainWidth(),
              color: Colors.redAccent,
              child: Text('data'),
            ),
            Container(
              height: constraints.constrainHeight() * 0.6,
              width: constraints.constrainWidth(),
              color: Colors.lime,
              child: ClipOval(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.blueAccent,
                  child: Text('data'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


//class JoistickCliper extends CustomClipper<Path>{
//  double circleRound = 100.0;
//  @override
//  Path getClip(Size size) {
//    Path path;
//
//    path.
//
//
//
//    return path;
//  }
//
//  @override
//  bool shouldReclip(CustomClipper<Path> oldClipper) {
//    // TODO: implement shouldReclip
//    return true;
//  }


//}