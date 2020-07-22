import 'package:charrmello/UI/signup.dart';
import 'package:flutter/material.dart';


class splash_about extends StatefulWidget {
  @override
  _splash_aboutState createState() => _splash_aboutState();
}

class _splash_aboutState extends State<splash_about> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        body: SafeArea(
            child: Center(
              child: Container(
                width: width/1.3,
                child: Column(
                  children: <Widget>[
                    Image.asset("assets/image111.png",scale: 2.6,),
                    Text('Charrmello is a stroy telling app that aims for full emmersion '
                        'into content, breaking the current boundries of audio books, and bringing a new medium for learning.',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: height/46
                    ),),

                    SizedBox(height: height/60,),
                    Text('If you want to learn about space, why not feel as if you’re actually there, or even if you’re listening to your latest adventure novel, get absorbed by the stakes.',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      style: TextStyle(
                          fontSize: height/46
                      ),),

                    SizedBox(height: height/60,),
                    Text('It’s all about bringing stroytelling and learing to life.\n\nEnjoy.',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      style: TextStyle(
                          fontSize: height/46
                      ),),

                    SizedBox(height: height/40,),
                    RaisedButton(

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xffED7457),)
                      ),
                      color: Color(0xffED7457),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) => new signup()));
                      },
                      child: Text(
                        "Enter",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),




                  ],
                ),
              ),
            )));
  }
}
