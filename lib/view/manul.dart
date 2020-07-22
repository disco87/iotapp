import 'package:flutter/material.dart';


class Manual extends StatefulWidget {
  @override
  _ManualState createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('수동 조작'),
      ),
      body:  Column(
          children: <Widget>[
            Container(
              height: h * 0.35,
              width: w,
              color: Colors.redAccent,
              child: Text('data'),
            ),
            LayoutBuilder(
              builder:(context, constraints) =>  GestureDetector(
                onPanDown: (details) {
                  print('x : ${details.localPosition.dx}');
                  print('y : ${details.localPosition.dy}');
                },
                onPanUpdate: (details) {
                  print('x : ${details.localPosition.dx}');
                  print('y : ${details.localPosition.dy}');
                },
                child: Container(
                  height: h * 0.532,
                  width: w,
                  color: Colors.white,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: constraints.maxWidth * 0.5 - 75.0,
                          bottom: 0.0,
                          child: Container(
                            child: Image.asset('assets/images/joystick_background.png',width: 150.0,height: 150.0,),
                          ),
                        ),
                        Positioned(
                          left: constraints.maxWidth * 0.5 - 50.0,
                          bottom: 0.0 + 24.0,
                          child: Container(
                            child: Image.asset('assets/images/joystick_knob.png',width: 100.0,height: 100.0,),
                          ),
                        )

                      ],


                  ),
                ),
              ),
            )
          ],
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
