import 'package:charrmello/UI/splash_about.dart';
import 'package:charrmello/UI/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(


      home: splash_screen(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new splash_about()
      },
    );
  }
}


