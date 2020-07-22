import 'package:flutter/material.dart';

var backgroundColor = Color(0xFF2E2D2B);
var pinkColor = Color(0xFFff6b80);



class player extends StatefulWidget {

  @override
  _DetailedScreenState createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios,size: 18,color: Colors.white,),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 6,),

            Stack(
              children: <Widget>[
                Image.asset("assets/player.png",
                  scale: 2.2,),
                Positioned(
                top: 300,
                left: 260,
                child:  Image.asset("assets/fire.png",
                    scale: 1),
              ),
              ],
            ),


              SizedBox(
                height: 5,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Mars III",
                    style: TextStyle(
                        color: Color(0xffEC745B),
                        fontSize: 20.0),
                  ),
                  SizedBox(height: 2.0),
                  Text(
                    "Amy Welsh",
                    style: TextStyle(
                        color: Color(0xffEC745B),
                        fontSize: 12.0,
                    fontWeight: FontWeight.w300),
                  ),

                ],
              ),
              SizedBox(height: 32.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Slider(
                  onChanged: (double value) {},
                  value: 0.2,
                  activeColor: Color(0xffEC745B),
                  inactiveColor: Color(0xffEC745B).withOpacity(0.4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '5:34',
                      style: TextStyle(color: Color(0xffEC745B),fontSize: 12),
                    ),
                    Text('25:16',
                        style: TextStyle(color: Color(0xffEC745B),fontSize: 12))
                  ],
                ),
              ),

              SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "-10",
                    style: TextStyle(
                        color: Color(0xffEC745B),
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(width: 32.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: (

                      Image.asset("assets/pause.png",scale: 1.4,)
//                        size: 58.0,
//                        color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 32.0),
                  Text(
                    "+10",
                    style: TextStyle(
                      color: Color(0xffEC745B),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),
                  )
                ],
              ),
//              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}