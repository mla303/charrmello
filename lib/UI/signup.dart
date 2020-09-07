import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class signup extends StatefulWidget {
  @override
  _signup_State createState() => _signup_State();
}

class _signup_State extends State<signup> {


  final _formKey = GlobalKey<FormState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("Users");
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
            color: const Color(0xff3B5753),
            image: DecorationImage(
                image: AssetImage('assets/bg_image.png'),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.dstATop))),
        child: Scaffold(
            backgroundColor: Colors.transparent,
//            appBar: AppBar(
//              elevation: 0,
//              backgroundColor: Colors.transparent,
//              title: Text('My App'),
//              centerTitle: true,
//              leading: IconButton(
//                  icon: Icon(
//                    Icons.list,
//                    color: Colors.white,
//                  ),
//                  onPressed: () {}),
//            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: height / 60,
                        ),
                        Text(
                          " Bring storytelling and learning to life.",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          height: height / 2.6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Or",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(
                              width: width / 90,
                            ),
                            Text(
                              "Sign up with",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: height / 60,
                        ),

                        //facebook and google logos
                        Container(
                          width: width / 3.4,
                          height: 44.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Image(
                                  image: AssetImage("assets/facebook.png"),
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image(
                                  image: AssetImage("assets/google.png"),
                                  height: 26,
                                  width: 26,
                                ),
                              )
                            ],
                          ),
                        ),


                        SizedBox(
                          height: height / 16,
                        ),
                        //name Textfield
                        Container(
                          width: width/1.6,
                          child: TextFormField(
                            controller: nameController,
                            validator: (value)
                              {
                                if(value.isEmpty)
                                  {
                                    return 'Enter Name Plz';
                                  }
                                return null;
                              },

                            cursorColor: Colors.grey,
                              cursorWidth: 1,
                              style: TextStyle(
                                  color: Color(0xffF1F1F1),
                                  fontWeight: FontWeight.w400),
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                hintText: "Glen Quagmire",
                                hintStyle: TextStyle(
                                  color: Color(0xffF1F1F1),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14
                                ),
                                contentPadding: EdgeInsets.only(bottom:5.0,left: 6),
                                isDense: true,
                              )),
                        ),


                        SizedBox(
                          height: height / 60,
                        ),
                        //email textfield
                        Container(
                          width: width/1.6,
                          child: TextFormField(
                              controller: emailController,
                              validator: (value)
                              {
                                if(value.isEmpty)
                                {
                                  return 'Enter Email Plz';
                                }
                                return null;
                              },
                              cursorColor: Colors.grey,
                              cursorWidth: 1,
                              style: TextStyle(
                                  color: Color(0xffF1F1F1),
                                  fontWeight: FontWeight.w400),
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                hintText: "quagmire@familyguy.com",
                                hintStyle: TextStyle(
                                    color: Color(0xffF1F1F1),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14
                                ),
                                contentPadding: EdgeInsets.only(bottom:5.0,left: 6),
                                isDense: true,
                              )),
                        ),


                        SizedBox(
                          height: height / 60,
                        ),
                        //password textfield
                        Container(
                          width: width/1.6,
                          child: TextFormField(
                              controller: passwordController,
                              validator: (value)
                              {
                                if(value.isEmpty)
                                {
                                  return 'Enter Password Plz';
                                }
                                return null;
                              },
                            obscureText: true,
                              cursorColor: Colors.grey,
                              cursorWidth: 1,
                              style: TextStyle(
                                  color: Color(0xffF1F1F1),
                                  fontWeight: FontWeight.w400),
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xffF1F1F1))
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Color(0xffF1F1F1),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14
                                ),
                                contentPadding: EdgeInsets.only(bottom:5.0,left: 6),
                                isDense: true,
                              )),
                        ),



                        SizedBox(
                          height: height / 20,
                        ),
                        //button
                        ButtonTheme(
                          minWidth: width/3,
                          child: RaisedButton(

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.white,)
                            ),
                            color: Colors.white,
                            textColor: Color(0xffED7457),
                            padding: EdgeInsets.all(8.0),
                            onPressed: () {

                              if(_formKey.currentState.validate())
                                {

                                }


                              Navigator.pushReplacement(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) => new login()));
                            },
                            child: Text(
                              "Let\'s Go",
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),



                        SizedBox(
                          height: height / 90,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Or",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(
                              width: width / 90,
                            ),
                            InkWell(
                              onTap: ()
                              {
                                Navigator.pushReplacement(
                                    context,
                                    new MaterialPageRoute(
                                        builder: (BuildContext context) => new login()));
                              },
                              child: Text(
                                "Log-in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }

  void signupuser()
  {
    firebaseAuth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((result)
    {
     dbRef.child(result.user.uid).set({
       "email": emailController.text,
       "password": passwordController.text,
       "name":nameController.text
     }).then((res)
     {
       Navigator.pushReplacement(
           context,
           new MaterialPageRoute(
               builder: (BuildContext context) => new login()));
     });
    }).catchError((err){
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(err.message),
              actions: [
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    });
  }
}
