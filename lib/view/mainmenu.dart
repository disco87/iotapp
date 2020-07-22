import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Menu'),),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: <Widget>[
            Container(
              height: constraints.constrainHeight() * 0.333,
              child: MyButton(
                w: w,
                h: h,
                image: Image.asset('assets/images/joystick2.png'),
                text: Text('Manual Control',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, '/manual'),
              ),
            ),
            Container(
              height: constraints.constrainHeight() * 0.333,
              child: MyButton(
                w: w,
                h: h,
                image: Image.asset('assets/images/auto3.png'),
                text: Text('Auto Control',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                onPressed: ()=> print('manual Control'),
              ),
            ),
            Container(
              height: constraints.constrainHeight() * 0.333,
              child: MyButton(
                w: w,
                h: h,
                image: Image.asset('assets/images/control.png'),
                text: Text('Setting',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                onPressed: ()=> print('manual Control'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class MyButton extends StatelessWidget {
  double w,h;
  Image image;
  var onPressed;
  Widget text;
  MyButton({this.w,this.h,this.image,this.text,this.onPressed});//생성자
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      elevation: 0.0,
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              width: w * 0.3,
              child: image,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
              width: w*0.5,
              child: text,
            )
          ],
        ),
      ),
      onPressed: onPressed,
    );
  }
}
