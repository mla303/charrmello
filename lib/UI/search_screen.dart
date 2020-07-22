import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search_screen extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<search_screen> {

  List musiclistdata = [
    listItems(
      songname: "New Tomorrow",
      imageUrl: "assets/song1.png",
      singername: "Lewis Pearson",
      duration: "15mins",
      discription: "ute irure dolor in reprehenderit, in voluptate velit esse cillum dolore eu. Niderit in volupt te irure dolor in re.",
    ),

    listItems(
      songname: "Smog",
      imageUrl: "assets/song2.png",
      singername: "Josh Lomax",
      duration: "15mins",
      discription: "ute irure dolor in reprehenderit, in voluptate velit esse cillum dolore eu. Niderit in volupt te irure dolor in re.",
    ),

    listItems(
      songname: "15 Mins To Downtown",
      imageUrl: "assets/song3.png",
      singername: "Alex Brooke",
      duration: "15mins",
      discription: "ute irure dolor in reprehenderit, in voluptate velit esse cillum dolore eu. Niderit in volupt te irure dolor in re.",
    ),


    listItems(
      songname: "Days of New",
      imageUrl: "assets/song4.png",
      singername: "Lewis Pearson",
      duration: "15mins",
      discription: "ute irure dolor in reprehenderit, in voluptate velit esse cillum dolore eu. Niderit in volupt te irure dolor in re.",
    ),

    listItems(
      songname: "Mar III",
      imageUrl: "assets/song5.png",
      singername: "Alex Brooke & Josh Lomax",
      duration: "15mins",
      discription: "ute irure dolor in reprehenderit, in voluptate velit esse cillum dolore eu. Niderit in volupt te irure dolor in re.",
    ),


  ];


List Secondmusiclistdata = [
  SecondlistItems(
      songname: "Glen Guagmire",
      imageUrl: "assets/song6.png",
      singername: "Story Teller",

    ),

  SecondlistItems(
      songname: "Lewis Pearson",
      imageUrl: "assets/song7.png",
      singername: "Story Teller",
    ),


  ];





  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height/60,),

                //Searchbar
                Container(
                  height: 40,
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
                          BorderRadius.all(Radius.circular(30))),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      // border: InputBorder.none,
                      hintText: "Quick Search",
                      hintStyle: (TextStyle(color: Colors.black)),
                      contentPadding: const EdgeInsets.only(
                        left: 16,
                        right: 20,
                        top: 5,
                        bottom: 5,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height/30,),


                //litview
                Container(
//              color: Colors.red,
                  height: height/1.5,
//                      width: width / 1,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: musiclistdata.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: (){
//                            Navigator.push(context,
//                                MaterialPageRoute(builder: (context) => book_event()));
//                            print("Hell");
                        },



                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                  image: DecorationImage(
                                      image: AssetImage(musiclistdata[index].imageUrl),
                                      fit: BoxFit.cover,
//                                              colorFilter: new ColorFilter.mode(
//                                                  Colors.black.withOpacity(0.4), BlendMode.dstATop)
                                  )),

                            ),


//                          CircleAvatar(
//                                      backgroundImage:
//                                      AssetImage(musiclistdata[index].imageUrl),
//                                      radius: 26,
//                                    ),
                            SizedBox(
                              width: width/28,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(
                                  musiclistdata[index].songname,
                                  style: TextStyle(
                                      fontSize: height / 42,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff413564)),
                                  textAlign: TextAlign.center,
                                ),


                                Row(
                                  children: <Widget>[
                                    Text(
                                      musiclistdata[index].singername,
                                      style: TextStyle(
                                          fontSize: height / 60,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff4f4848)),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      //textAlign: TextAlign.center,
                                    ),

                                    SizedBox(width: width/20,),
                                    Container(
                                      height: 14.0,
                                      width: 0.8,
                                      color: Colors.grey
                                    ),
                                    SizedBox(width: width/60,),
                                    Text(
                                      musiclistdata[index].duration,
                                      style: TextStyle(
                                          fontSize: height / 60,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
//                                        maxLines: 2,
//                                        overflow: TextOverflow.ellipsis,
                                      //textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),


                                SizedBox(
                                  height: 4
                                ),
                                Container(
                                  width: width/1.6,
                                  child: Text(
                                    musiclistdata[index].discription,
                                    style: TextStyle(
                                        fontSize: height / 60,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff224F75)),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    //textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),



                      );
                    },
//                        separatorBuilder: (context, index)
//                        {
//                          return Divider();
//                        },
                  ),
                ),

                Container(
//                  color: Colors.red,
                  height: height/4,
//                      width: width / 1,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: Secondmusiclistdata.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: (){
//                            Navigator.push(context,
//                                MaterialPageRoute(builder: (context) => book_event()));
//                            print("Hell");
                        },



                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                    image: AssetImage(Secondmusiclistdata[index].imageUrl),
                                    fit: BoxFit.cover,
//                                              colorFilter: new ColorFilter.mode(
//                                                  Colors.black.withOpacity(0.4), BlendMode.dstATop)
                                  )),

                            ),
                            SizedBox(
                              width: width/28,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(
                                  Secondmusiclistdata[index].songname,
                                  style: TextStyle(
                                      fontSize: height / 42,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff224F75)),
                                  textAlign: TextAlign.center,
                                ),


                                Text(
                                  Secondmusiclistdata[index].singername,
                                  style: TextStyle(
                                      fontSize: height / 60,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff4f4848)),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  //textAlign: TextAlign.center,
                                ),

                              ],
                            ),
                          ],
                        ),



                      );
                    },
//                        separatorBuilder: (context, index)
//                        {
//                          return Divider();
//                        },
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class listItems {

  String songname;
  String imageUrl;
  String singername;
  String duration;
  String discription;



  listItems({

    this.songname,
    this.imageUrl,
    this.singername,
    this.duration,
    this.discription,

  });
}

class SecondlistItems {

  String songname;
  String imageUrl;
  String singername;




  SecondlistItems({

    this.songname,
    this.imageUrl,
    this.singername,


  });
}
