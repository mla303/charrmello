import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 4,),
                GestureDetector(
                onTap: (){
//      Navigator.push(context, MaterialPageRoute(
//      builder: (context) => DoctorsInfo()
//      ));
        },
            child: Container(
              width: width/1.1,
              decoration: BoxDecoration(
                  color: Color(0xff000000),
                  image: DecorationImage(
                      image: AssetImage('assets/homeheader.png'),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.6), BlendMode.dstATop)),
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.symmetric(horizontal: 24,
                  vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text("Carry on:", style: TextStyle(
                      color: Color(0xffF2F2CB),
                      fontSize: 16
                  ),),
                  SizedBox(height: 2,),
                  Text("15 Mins To Downtown", style: TextStyle(
                      fontSize: 12,
                    color: Color(0xffF2F2CB),
                  ),)
                ],
              ),
            ),
        ),
                SizedBox(height: height/60,),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.52,
                  child: ListView.builder(
                      itemCount: SongsList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
                          color: Colors.transparent,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Card(

                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),

                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff000000),
                                  image: DecorationImage(
                                      image: AssetImage(SongsList[index].imgUrl),
                                      fit: BoxFit.cover,
                                      colorFilter: new ColorFilter.mode(
                                          Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                          ),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child:
                              Stack(
                                children: <Widget>[
                                  Positioned(
                                    top:20,
                                    left: 10,
                                    child: Text(SongsList[index].SongName,
                                      style:
                                      TextStyle(
                                          color: Colors.white,
                                          fontSize: height/48,
                                          fontWeight: FontWeight.w500
                                      ),),
                                  ),
                                  Positioned(
                                    top:40,
                                    left: 10,
                                    child: Text(SongsList[index].Singername,
                                      style:
                                      TextStyle(
                                          color: Colors.white,
                                          fontSize: height/58,
                                          fontWeight: FontWeight.w300
                                      ),),
                                  ),
                                ],
                              )

                            ),
                          ),
                        );
                      }),
                ),

                //forYOU
                SizedBox(height: height/40,),
                Container(
                  width: width/1.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("For You", style: TextStyle(
                        color: Color(0xff224F75),
                        fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ListView.builder(
                      itemCount: forYOuList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
//                        color: Colors.redAccent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),

                                  child:

                                  Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xff000000),
                                          image: DecorationImage(
                                              image: AssetImage(forYOuList[index].imgUrl),
                                              fit: BoxFit.cover,
                                              colorFilter: new ColorFilter.mode(
                                                  Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                          ),
                                          borderRadius: BorderRadius.circular(12)
                                      ),
                                      child: null,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(forYOuList[index].SongName,
                                  style:
                                  TextStyle(
                                      color: Color(0xff224F75),
                                      fontSize: height/54,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),



                //comedy
                SizedBox(height: height/20,),
                Container(
                  width: width/1.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Comedy", style: TextStyle(
                        color: Color(0xff224F75),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ListView.builder(
                      itemCount: forYOuList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
//                        color: Colors.redAccent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),

                                  child:

                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        image: DecorationImage(
                                            image: AssetImage(forYOuList[index].imgUrl),
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                        ),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: null,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(forYOuList[index].SongName,
                                  style:
                                  TextStyle(
                                      color: Color(0xff224F75),
                                      fontSize: height/54,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),


                //drama
                SizedBox(height: height/20,),
                Container(
                  width: width/1.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Drama", style: TextStyle(
                        color: Color(0xff224F75),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ListView.builder(
                      itemCount: forYOuList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
//                        color: Colors.redAccent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),

                                  child:

                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        image: DecorationImage(
                                            image: AssetImage(forYOuList[index].imgUrl),
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                        ),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: null,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(forYOuList[index].SongName,
                                  style:
                                  TextStyle(
                                      color: Color(0xff224F75),
                                      fontSize: height/54,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),



                //tredning
                SizedBox(height: height/20,),
                Container(
                  width: width/1.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Tranding Chiefs", style: TextStyle(
                        color: Color(0xff224F75),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ListView.builder(
                      itemCount: forYOuList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
//                        color: Colors.redAccent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),

                                  child:

                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        image: DecorationImage(
                                            image: AssetImage(forYOuList[index].imgUrl),
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                        ),
                                        borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: null,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(forYOuList[index].SongName,
                                  style:
                                  TextStyle(
                                      color: Color(0xff224F75),
                                      fontSize: height/54,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),



                //science
                SizedBox(height: height/20,),
                Container(
                  width: width/1.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Science | Space", style: TextStyle(
                        color: Color(0xff224F75),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ListView.builder(
                      itemCount: forYOuList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
//                        color: Colors.redAccent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),

                                  child:

                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        image: DecorationImage(
                                            image: AssetImage(forYOuList[index].imgUrl),
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                        ),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: null,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(forYOuList[index].SongName,
                                  style:
                                  TextStyle(
                                      color: Color(0xff224F75),
                                      fontSize: height/54,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),


                //sci-fi
                SizedBox(height: height/20,),
                Container(
                  width: width/1.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Sci-Fi", style: TextStyle(
                        color: Color(0xff224F75),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ListView.builder(
                      itemCount: forYOuList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
//                        color: Colors.redAccent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),

                                  child:

                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        image: DecorationImage(
                                            image: AssetImage(forYOuList[index].imgUrl),
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                        ),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: null,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(forYOuList[index].SongName,
                                  style:
                                  TextStyle(
                                      color: Color(0xff224F75),
                                      fontSize: height/54,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),




                //communtity picks
                SizedBox(height: height/20,),
                Container(
                  width: width/1.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Community Picks", style: TextStyle(
                        color: Color(0xff224F75),
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
                Container(
//                color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: ListView.builder(
                      itemCount: forYOuList.length,
                      shrinkWrap: false,
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
//                        color: Colors.redAccent,
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Card(

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),

                                  child:

                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff000000),
                                        image: DecorationImage(
                                            image: AssetImage(forYOuList[index].imgUrl),
                                            fit: BoxFit.cover,
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.6), BlendMode.dstATop)
                                        ),
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: null,

                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text(forYOuList[index].SongName,
                                  style:
                                  TextStyle(
                                      color: Color(0xff224F75),
                                      fontSize: height/54,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}


List SongsList = [

  Song(
      SongName:"Mystique",
      Singername:"By Alex Brooke",
      imgUrl: "assets/pic1.png"
  ),
  Song(
      SongName:"New World",
      Singername:"By Alex Brooke",
      imgUrl: "assets/pic2.png"
  ),
  Song(
      SongName:"New World",
      Singername:"By Alex Brooke",
      imgUrl: "assets/song9.png"
  ),

];

class Song{
  String SongName;
  String Singername;
  String imgUrl;

  Song({this.SongName,this.imgUrl,this.Singername});

}


List forYOuList = [

  ForYou(
      SongName:"Mystique",
      imgUrl: "assets/song4.png"
  ),
  ForYou(
      SongName:"New World",

      imgUrl: "assets/pic2.png"
  ),
  ForYou(
      SongName:"New World",

      imgUrl: "assets/song9.png"
  ),
  ForYou(
      SongName:"New World",

      imgUrl: "assets/pic3.png"
  ),

];

class ForYou{
  String SongName;
  String imgUrl;

  ForYou({this.SongName,this.imgUrl,});

}