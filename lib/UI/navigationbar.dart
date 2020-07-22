import 'package:charrmello/UI/homepage.dart';
import 'package:charrmello/UI/login.dart';
import 'package:charrmello/UI/player.dart';
import 'package:charrmello/UI/profile.dart';
import 'package:charrmello/UI/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_modal/rounded_modal.dart';


class navigation_bar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NavigationBar();
  }
}

class NavigationBar extends State<navigation_bar> {


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedTab = 0;
  final _pageOptions = [

  homepage(),
    search_screen(),
    player(),
    profile(),

  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return MaterialApp(




      theme: ThemeData(
          primarySwatch: Colors.grey,

          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.grey),
          )),
      home: Scaffold(


        key: _scaffoldKey,

        body: _pageOptions[_selectedTab],
        bottomNavigationBar: SizedBox(height: 60,
          child: BottomNavigationBar(

            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedTab,
            selectedItemColor: Color(0xff3A3735),
            elevation: 2,
            onTap: (int index) {
              setState(() {
                if(index == 3)
                  {

                    showModalBottomSheet(
                        context: context, builder: (navigation_bar)
                    {

                      return GestureDetector(

//                        onTap: ()=> Navigator.of(context).pop(),
                        child: _bottomSheet(),
                      );

                    },
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                    isScrollControlled:true,
                        elevation: 2,
                      isDismissible: true,
                    );

//                   _scaffoldKey.currentState
//                       .showBottomSheet((context)=>_bottomSheet(),);
//                   var bottomSheetController=
//                   showBottomSheet(context: context, builder: (context)=> _bottomSheet());
//
//                   bottomSheetController.closed.then((value)

//                   {
//                     _selectedTab = index;
//                   });

//                    profile();
                  }
                else
                {
                  _scaffoldKey.currentState.hideCurrentSnackBar();
                  _selectedTab = index;
                }



              });
            },


            items: [
              BottomNavigationBarItem(
                icon: _selectedTab ==0 ? new Image.asset('assets/icons/home_selected.png',scale: 24,)
                    :new Image.asset('assets/icons/home_unselected.png',scale: 24),
                title: Text('Home',style: TextStyle(fontSize: height/60),),
              ),
              BottomNavigationBarItem(
                icon: _selectedTab ==1 ? new Image.asset('assets/icons/search_selected.png',scale: 24,)
                    :new Image.asset('assets/icons/search_unselected.png',scale: 24),
                title: Text('Home',style: TextStyle(fontSize: height/60),),
              ),
              BottomNavigationBarItem(
                icon: _selectedTab ==2 ? new Image.asset('assets/icons/play_selected.png',scale: 24,)
                    :new Image.asset('assets/icons/play_unselected.png',scale: 24),
                title: Text('Home',style: TextStyle(fontSize: height/60),),
              ),
              BottomNavigationBarItem(
                icon: _selectedTab ==3 ? new Image.asset('assets/icons/profile_selected.png',scale: 24,)
                    :new Image.asset('assets/icons/profile_unselected.png',scale: 24),
                title: Text('Home',style: TextStyle(fontSize: height/60),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

List SongsList = [

  Song(
      SongName:"New Tomorrow",
      imgUrl: "assets/song8.png"
  ),
  Song(
      SongName:"New Tomorrow",
      imgUrl: "assets/song9.png"
  ),
  Song(
      SongName:"New Tomorrow",
      imgUrl: "assets/song9.png"
  ),
  Song(
      SongName:"New Tomorrow",
      imgUrl: "assets/song8.png"
  ),
  Song(
      SongName:"New Tomorrow",
      imgUrl: "assets/song9.png"
  ),
  Song(
      SongName:"New Tomorrow",
      imgUrl: "assets/song10.png"
  ),
];

class Song{
  String SongName;
  String imgUrl;

  Song({this.SongName,this.imgUrl,});

}


Widget _bottomSheet() {

  final GlobalKey<ScaffoldState> _scaffolde = new GlobalKey<ScaffoldState>();
  return BottomSheet(

    key: _scaffolde,
    onClosing: () {},
    builder: (context) =>
        SingleChildScrollView(

      child: Container(
        width: 500,
        height: 600,
//                alignment: Alignment.b,
        decoration: BoxDecoration(
          color: Color(0xffED7457),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0)),
//              boxShadow: [
//                BoxShadow(
//                  color:Color(0xff8C04FF).withOpacity(0.9),
//                  spreadRadius: 0,
//                  blurRadius: 1,
//                  offset: Offset(0, 15), // changes position of shadow
//                ),
//              ],
        ),

        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              SizedBox(height: 12,),

              Container(
                width: MediaQuery.of(context).size.width/1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                                             Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.clear,color: Colors.white,)),
                    IconButton(
                      onPressed: ()
                        {
//                          _scaffolde.currentState.hideCurrentSnackBar();

                          showModalBottomSheet(
                            context: context, builder: (navigation_bar)
                          {

                            return GestureDetector(

//                        onTap: ()=> Navigator.of(context).pop(),
                              child: _bottomSheetedit(),
                            );

                          },
                            backgroundColor: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            isScrollControlled:true,
                            elevation: 2,
                            isDismissible: true,
                          );


                        },
                        icon: Icon(Icons.drag_handle,color: Colors.white)),
                  ],
                ),
              ),

              Container(
                //color: Colors.yellow,
                width: 90,
                height: 90,
                child: CircleAvatar(
                  backgroundImage:
                  AssetImage("assets/profile.png"),
                  radius: 26,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Glen Guagmire",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 20.0),
              ),
              SizedBox(height: 2.0),
              Text(
                "STORYTELLER FOR 2 YEARS",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300),
              ),

              SizedBox(height: 16.0),

              Container(
                width: MediaQuery.of(context).size.width/1.2,
                child: Text(
                  "Currently On:",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 6.0),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: MediaQuery.of(context).size.height/4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
//                                    color: const Color(0xff3B5753),
                    image: DecorationImage(
                      image: AssetImage('assets/player.png'),
                      fit: BoxFit.cover,
//                                        colorFilter: new ColorFilter.mode(
//                                            Colors.black.withOpacity(0.4), BlendMode.dstATop)
                    )
                ),

              ),
              SizedBox(height: 14.0),
              Container(
                width: MediaQuery.of(context).size.width/1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "My Self",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18.0),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      "Edit",
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.0),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: SongsList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,

                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (BuildContext context, int index)
                {
                  return GestureDetector(
                    onTap: (){

                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(SongsList[index].imgUrl,
                            scale: 1.6),

                        Text(SongsList[index].SongName,
                          style:

                          TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height/60,
                              fontWeight: FontWeight.w400
                          ),)



                      ],
                    ),
                  );
                },
              ),


            ],
          ),
        ),

      ),
    ),
    elevation: 4,
  );
}





Widget _bottomSheetedit() {

  final GlobalKey<ScaffoldState> _scaffolde = new GlobalKey<ScaffoldState>();
  return BottomSheet(

    key: _scaffolde,
    onClosing: () {},
    builder: (context) =>
        SingleChildScrollView(

          child: Container(
            width: 500,
            height: 580,
//                alignment: Alignment.b,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)),
//              boxShadow: [
//                BoxShadow(
//                  color:Color(0xff8C04FF).withOpacity(0.9),
//                  spreadRadius: 0,
//                  blurRadius: 1,
//                  offset: Offset(0, 15), // changes position of shadow
//                ),
//              ],
            ),

            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  SizedBox(height: 12,),

                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.clear,color: Color(0xffED7457))),
                       GestureDetector(
                         onTap: ()
                         {
                           Navigator.pushReplacement(
                               context,
                               new MaterialPageRoute(
                                   builder: (BuildContext context) => new login()));
                         },
                         child: Text(
                           "Log-out",
                           style: TextStyle(
                             color: Color(0xffED7457),
                             fontSize: 14,
                             fontWeight: FontWeight.w400
                           ),
                         ),
                       )
                      ],
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            //color: Colors.yellow,
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage("assets/profile.png"),
                              radius: 26,
                            ),
                          ),

                          Positioned(
                            top: 60,
                            child: Container(
                              //color: Colors.yellow,
                              width: 20,
                              height: 20,
                              child: CircleAvatar(
                                backgroundImage:
                                AssetImage("assets/addpic.png"),
                                backgroundColor: Color(0xffF2F2F2),
                                radius: 26,
                              ),
                            ),
                          ),

                        ],

                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text(
                              "Display Name",
                              style: TextStyle(
                                  color: Color(0xffED7457),
                                  fontSize: 16.0),
                            ),
                          ),
                          SizedBox(height: 6),
                          Container(
                            height: 30,
                            width: 200,
                            alignment: Alignment.center,
                            child: TextFormField(
                              cursorColor: Colors.grey,

//                controller: controller,
//                focusNode: focusNode,
                              style: TextStyle(fontSize: 16, color: Colors.black),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffF1F1F1),

                                enabledBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide(
                                    color: Color(0xffF1F1F1),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.transparent),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),

                                // border: InputBorder.none,
                                hintText: "Quick Search",
                                hintStyle: (TextStyle(color: Color(0xffED7457),fontSize: 14)),
                                contentPadding: const EdgeInsets.only(
                                  left: 16,
                                  right: 20,
                                  top: 5,
                                  bottom: 5,
                                ),
                              ),
                            ),
                          ),




                        ],




                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),

                 Container(
                   width: MediaQuery.of(context).size.width/1.2,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Personal Details",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                             fontWeight: FontWeight.w500
                           ),
                         ),
                       ),

                       SizedBox(height: 16,),

                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Name",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),
                       SizedBox(height: 4,),
                       Container(
                         height: 30,
                         width: 300,
                         alignment: Alignment.center,
                         child: TextFormField(
                           cursorColor: Colors.grey,

//                controller: controller,
//                focusNode: focusNode,
                           style: TextStyle(fontSize: 16, color: Colors.black),
                           decoration: InputDecoration(
                             filled: true,
                             fillColor: Color(0xffF1F1F1),

                             enabledBorder: const OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(30)),
                               borderSide: BorderSide(
                                 color: Color(0xffF1F1F1),
                               ),
                             ),
                             focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.transparent),
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(20))),

                             // border: InputBorder.none,
                             hintText: "Glean Boxi",
                             hintStyle: (TextStyle(color: Color(0xffED7457),fontSize: 14)),
                             contentPadding: const EdgeInsets.only(
                               left: 16,
                               right: 20,
                               top: 5,
                               bottom: 5,
                             ),
                           ),
                         ),
                       ),



                       SizedBox(height: 14,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Email",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),
                       SizedBox(height: 4,),
                       Container(
                         height: 30,
                         width: 300,
                         alignment: Alignment.center,
                         child: TextFormField(
                           cursorColor: Colors.grey,

//                controller: controller,
//                focusNode: focusNode,
                           style: TextStyle(fontSize: 16, color: Colors.black),
                           decoration: InputDecoration(
                             filled: true,
                             fillColor: Color(0xffF1F1F1),

                             enabledBorder: const OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(30)),
                               borderSide: BorderSide(
                                 color: Color(0xffF1F1F1),
                               ),
                             ),
                             focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.transparent),
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(20))),

                             // border: InputBorder.none,
                             hintText: "quagmire@familyguy.com",
                             hintStyle: (TextStyle(color: Color(0xffED7457),fontSize: 14)),
                             contentPadding: const EdgeInsets.only(
                               left: 16,
                               right: 20,
                               top: 5,
                               bottom: 5,
                             ),
                           ),
                         ),
                       ),



                       SizedBox(height: 18,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Prefrences",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w500
                           ),
                         ),
                       ),
                       SizedBox(height: 12,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Theme",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),
                       SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: <Widget>[
                           Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               color: Color(0xffED7457),
                               borderRadius: BorderRadius.circular(5),
                             ),

                           ),
                           Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               color: Color(0xffAFD9C7),
                               borderRadius: BorderRadius.circular(5),
                             ),

                           ),
                           Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               color: Color(0xff2E2D2B),
                               borderRadius: BorderRadius.circular(5),
                             ),

                           ),
                           Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               color: Color(0xffDDE0D9),
                               borderRadius: BorderRadius.circular(5),
                             ),

                           ),
                           Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                               color: Color(0xffFFFFFF),
                               borderRadius: BorderRadius.circular(5),
                             ),

                           ),

                         ],
                       ),


                       SizedBox(height: 14,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Password",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),
                       SizedBox(height: 4,),
                       Container(
                         height: 30,
                         width: 300,
                         alignment: Alignment.center,
                         child: TextFormField(
                           cursorColor: Colors.grey,
obscureText: true,

//                controller: controller,
//                focusNode: focusNode,
                           style: TextStyle(fontSize: 16, color: Colors.black),
                           decoration: InputDecoration(
                             filled: true,
                             fillColor: Color(0xffF1F1F1),

                             enabledBorder: const OutlineInputBorder(
                               borderRadius: BorderRadius.all(Radius.circular(30)),
                               borderSide: BorderSide(
                                 color: Color(0xffF1F1F1),
                               ),
                             ),
                             focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.transparent),
                                 borderRadius:
                                 BorderRadius.all(Radius.circular(20))),

                             // border: InputBorder.none,
                             hintText: "*******",
                             hintStyle: (TextStyle(color: Color(0xffED7457),fontSize: 14)),
                             contentPadding: const EdgeInsets.only(
                               left: 16,
                               right: 20,
                               top: 5,
                               bottom: 5,
                             ),
                           ),
                         ),
                       ),



                       SizedBox(height: 16,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Privacy",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),

                       SizedBox(height: 14,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Payment Detail",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),

                       SizedBox(height: 14,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "About",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),

                       SizedBox(height: 14,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Legal",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),

                       SizedBox(height: 14,),
                       Padding(
                         padding: const EdgeInsets.only(left:8.0),
                         child: Text(
                           "Beta Program",
                           style: TextStyle(
                               color: Color(0xffED7457),
                               fontSize: 16.0,
                               fontWeight: FontWeight.w300
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),

                  SizedBox(height: 14,),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text(
                      "Want to become a Story Chief?",
                      style: TextStyle(
                          color: Color(0xffED7457),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),

                  SizedBox(height: 8,),
                  Container(
                    width: 500,
                    height: 30,
                    color: Color(0xffED7457),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Delete Account",style: TextStyle(
                        color: Colors.white
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )



                ],
              ),
            ),

          ),
        ),
    elevation: 4,
  );
}