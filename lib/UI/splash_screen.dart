import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_splash/animated_splash.dart';
class splash_screen extends StatefulWidget {


//  final ImageProvider splash_logo;
//  Splash({
//    Key key,
//    this.splash_logo = const AssetImage('assets/images/splash_logo.png'),
//  }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<splash_screen> {
  startTime() async {
    var _duration = new Duration(milliseconds: 2200);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Home');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F1F1),
      body: SafeArea(
        child: AnimatedSplash
          (
          imagePath: "assets/logo.png",
home: splash_screen(),
duration: 2000,
type: AnimatedSplashType.StaticDuration,
//outputAndHome: ,
//              Image.asset("assets/logo.png",scale: 2,)
        ),
      ),
    );
  }
}
