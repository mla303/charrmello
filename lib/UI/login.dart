import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'navigationbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
class login extends StatefulWidget {
  @override
  _signup_State createState() => _signup_State();
}

class _signup_State extends State<login> {

  final focus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  TextEditingController controllerEmail;
  TextEditingController controllerPass;
  String _email;
  String _password;
  bool isLoading = false;



  PersistentBottomSheetController _sheetController;
  String _displayName;
  bool _loading = false;
  String errorMsg = "";





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
                    autovalidate: _autoValidate,
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
                              "Sign In with",
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
                                onTap: () {

                                  print("Facebook Login");
                                  FacebookLogin fblogin = new FacebookLogin();
                                  fblogin.logIn(['email', 'public_profile']).then(
                                          (result) async {
                                        switch (result.status) {
                                          case FacebookLoginStatus.loggedIn:
                                            {
                                              FirebaseAuth _firebaseAuth =
                                                  FirebaseAuth.instance;
                                              final AuthCredential credential =
                                              FacebookAuthProvider.getCredential(accessToken: result.accessToken.token);
                                              AuthResult authResult = await _firebaseAuth
                                                  .signInWithCredential(credential);
                                              FirebaseUser userDetail = authResult.user;
                                              String email = userDetail.email;
                                              String name = userDetail.displayName;
                                              print(email);
                                              print(name);
                                              Navigator.pushReplacement(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) => new navigation_bar()));
                                            break;
                                            }
                                          case FacebookLoginStatus.cancelledByUser:
                                            // TODO: Handle this case.
                                          print("You cancelled");
                                            break;
                                          case FacebookLoginStatus.error:
                                            print("Error");
                                            print(result);
                                            // TODO: Handle this case.
                                            break;
                                        }
                                      }).catchError((e) {
                                    print(e);
                                  });


                                },
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
                        //email Textfield
                        Container(
                          width: width/1.6,
                          child: TextFormField(
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            validator: validateEmail,
                            controller: controllerEmail,
                            onSaved: (val) =>
                              setState(()=> _email = val),
                            onFieldSubmitted: (v)
                              {
                                FocusScope.of(context).requestFocus(focus);
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
                        //password textfield
                        Container(
                          width: width/1.6,
                          child: TextFormField(
                            focusNode: focus,
                              validator: validatePass,
                              controller: controllerPass,
                              onSaved: (val) =>
                                  setState(()=> _password = val),
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
                          height: height / 14,
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




                              final form = _formKey.currentState;
                              if(form.validate())
                                {
                                  Center(child: CircularProgressIndicator());
                                  isLoading = true;
                                  form.save();
                                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password).then((AuthResult auth){
                                    isLoading = false;
                                    clearControllers();
                                    Navigator.pushReplacement(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (BuildContext context) => new navigation_bar()));
                                  }).catchError((err){
                                    isLoading=false;
                                    Fluttertoast.showToast(msg: "Sign In Failed");
                                    print(err);
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context)
                                        {
                                          return AlertDialog(
                                            title: Text("Error"),
                                            content: Text(err.toString(),),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text("OK"),
                                                onPressed: ()
                                                {
                                                  Navigator.of(context).pop();
                                                },
                                              )
                                            ],
                                          );
                                        }
                                    );
                                    this.setState((){
                                      isLoading = false;
                                    });
                                    print(err);
                                  });
                                }

//
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
                                        builder: (BuildContext context) => new signup()));
                              },
                              child: Text(
                                "Sign-up",
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

  clearControllers()
  {
    controllerEmail = new TextEditingController(text: "");
    controllerPass = new TextEditingController(text: "");
  }




}



String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}


String validatePass(String value) {
  if (value.length < 5)
    return 'Password must be more than 5 charater';
  else
    return null;
}



