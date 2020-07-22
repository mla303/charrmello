import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet guide',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Builder(
      builder: (context) => Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                showBottomSheet(
                    context: context,
                    builder: (context) =>
                        SingleChildScrollView(
                          child: Container(
                            width: 500,
                            height: 700,
//                alignment: Alignment.b,
                            decoration: BoxDecoration(
                              color: Color(0xffED7457),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
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
                                    width: width/1.2,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        IconButton(
                                            onPressed: () {
//                                              bottomSheet
                                            },
                                            icon: Icon(Icons.clear,color: Colors.white,)),
                                        Icon(Icons.drag_handle,color: Colors.white),
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
                                    width: width/1.2,
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
                                    width: width/1.2,
                                    height: height/4,
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
                                    width: width/1.3,
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
                                                  fontSize: height/60,
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


                );
              },
            )


          ],
        ),
      ),
    ));
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