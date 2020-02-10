import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    List<String> _userInfo = [
      "Farmer", "I am a born farmer. I produce mazie", "+233501063179", "Bolgatanga", "willisit22@gmail.com", "Maize Cultivation", "More than 5 years", "More than 6 hectores"
    ];

    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;  

    Widget _userDetails = Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Column(
        children: <Widget>[
          //1st Rectangle
          buildContainer(_theme, Icons.info_outline, _userInfo[0], _userInfo[1]),
          //1st Rectangle
          buildContainer(_theme, Icons.phone, "Mobile", _userInfo[2]),
          //1st Rectangle
          buildContainer(_theme, Icons.home, "Address", _userInfo[3]),
          //1st Rectangle
          buildContainer(_theme, Icons.mail_outline, "Email", _userInfo[4]),
          //1st Rectangle
          buildContainer(_theme, Icons.fastfood, "CROP BEING PRODUCED", _userInfo[5]),
          //1st Rectangle
          buildContainer(_theme, Icons.calendar_view_day, "YEARS OF EXPERIENCE", _userInfo[6]),
          //1st Rectangle
          buildContainer(_theme, Icons.landscape, "SIZE OF LAND", _userInfo[7]),
        ],
      ),
    );

    Widget _otherDetails = Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      width: _size.width,
      height: 100.0,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //1st
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("Followers", style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w700),),
                    Text("110", style: TextStyle(fontWeight: FontWeight.w700,))
                  ],
                ),
                //2nd
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("Followers", style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w700),),
                    Text("110", style: TextStyle(fontWeight: FontWeight.w700,))
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //3rd
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Reviews", style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w700),),
                    RatingBarIndicator(
                      rating: 3.4,
                      itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 10.0,
                      unratedColor: Colors.grey,
                    ),
                  ],
                ),
                //4th
                Column(
                  children: <Widget>[
                    Text("Tamakloe Asiwome", style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w700),),
                    Text("Grace Farm", style: TextStyle(fontWeight: FontWeight.w700,))
                  ],
                ),
                //5th
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("Subscriptions", style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w700, fontSize: 10.0),),
                    Text("57", style: TextStyle(fontWeight: FontWeight.w700,))
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );

    //Button Bar
    Widget _buttonBar = Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0,),
        child: Container(
          height: 28.0,
          decoration: BoxDecoration(
            color: _theme.primaryColor,
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: FittedBox(
            fit: BoxFit.fill,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: null, child: Text("Message", style: TextStyle(color: Colors.white),)),
                Container(height: 20.0,color: Colors.black, width: 1.0,),
                FlatButton(onPressed: null, child: Text("Call", style: TextStyle(color: Colors.white),)),
                Container(height: 20.0,color: Colors.black, width: 1.0,),
                FlatButton(onPressed: null, child: Text("Ask", style: TextStyle(color: Colors.white),)),
                Container(height: 20.0,color: Colors.black, width: 1.0,),
                FlatButton(onPressed: null, child: Text("Follow/Unfollow", style: TextStyle(color: Colors.white),)),
                Container(height: 20.0,color: Colors.black, width: 1.0,),
                FlatButton(onPressed: null, child: Text("Review", style: TextStyle(color: Colors.white),))
              ],
            ),
          ),
        )
      );

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                height: _size.height*0.2,
                width: _size.width,
                child: Image.network("https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg",fit: BoxFit.cover,),
              ),
              Positioned(
                top: _size.height/4.6-50,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: _theme.primaryColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                    )
                  ),
                ),
              ),
            ],
          ),
          _otherDetails,
          _buttonBar,
          Container(
            margin: EdgeInsets.symmetric(vertical: 4.0),
            height: 1.0,
            width: _size.width,
            color: _theme.primaryColor,
          ),
          _userDetails
        ],
      )
    );
  }

  Container buildContainer(ThemeData _theme, IconData icon, String name, String detail) {
    return Container(
          height: 75.0,
          margin: EdgeInsets.only(bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10.0)
          ),child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Icon
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(icon, color: _theme.primaryColor,size: 35.0,),
              ),
              //Divider
              Container(
                margin: EdgeInsets.only(right: 15.0),
                height: 40.0,
                width: 1.0,
                color: _theme.primaryColor,
              ),

              //Label
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name, style: TextStyle(color: _theme.primaryColor, fontSize: 14.0, fontWeight: FontWeight.w600),),
                  Text(detail)
                ],
              )
            ],
          ),
        );
  }
}