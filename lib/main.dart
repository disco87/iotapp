import 'package:flutter/material.dart';
import 'package:iotcontrol/view/iotcontrol.dart';
import 'package:iotcontrol/view/mainmenu.dart';
import 'package:iotcontrol/view/manul.dart';

void main() => runApp(MyIotControlApp());

class MyIotControlApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/iotcontrol' :(context) => IotControl(),
        '/manual' : (context) => Manual(),
      },
    );
  }
}
