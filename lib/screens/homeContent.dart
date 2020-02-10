import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeContentPage extends StatefulWidget {
  @override
  _HomeContentPageState createState() => _HomeContentPageState();
}

class _HomeContentPageState extends State<HomeContentPage> {

  void _onSelectedPopupItem(PopupMenuAction item){}

  List<dynamic> _cardLists = [
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 4.5, "city": "Kumasi", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.0, "city": "Accra", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/221/116/854/joaquin-phoenix-joker-batman-fire-car-hd-wallpaper-preview.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 4.2, "city": "Tema", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.5, "city": "Takoradi", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://cdn.pixabay.com/photo/2018/10/30/16/06/water-lily-3784022__340.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.75, "city": "Kasoa", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://wallpaperaccess.com/full/803477.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.23, "city": "Kumasi", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 4.5, "city": "Kumasi", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.0, "city": "Accra", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/221/116/854/joaquin-phoenix-joker-batman-fire-car-hd-wallpaper-preview.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 4.2, "city": "Tema", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.5, "city": "Takoradi", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://cdn.pixabay.com/photo/2018/10/30/16/06/water-lily-3784022__340.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.75, "city": "Kasoa", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"},
    {"name": "Detra Mcmunn", "time" : DateTime.now(), "rate": 3.23, "city": "Kumasi", "thumbnail": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", "image" : "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"}

  ];



  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;  

    //AppBar Peferred Container
    Container _preferredContainer = Container(
      height: 120.0,
      color: _theme.primaryColor,
      padding: EdgeInsets.only(top: 10.0, left: 8.0, bottom: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
              "eHarvest",
              style: _theme.textTheme.headline.copyWith(color: Colors.white),
            ),
              PopupMenuButton<PopupMenuAction>(
                icon: Icon(Icons.dehaze, color: Colors.white,),
                onSelected: _onSelectedPopupItem,
                itemBuilder: (context){
                  return <PopupMenuEntry<PopupMenuAction>>[
                    const PopupMenuItem<PopupMenuAction>(
                      value: PopupMenuAction.CAT,
                      child: Text("ALL CATEGORIES"),
                    ),
                    const PopupMenuItem<PopupMenuAction>(
                      value: PopupMenuAction.REQ,
                      child: Text("REQUEST"),
                    ),
                    const PopupMenuItem<PopupMenuAction>(
                      value: PopupMenuAction.REQ,
                      child: Text("QUESTION"),
                    ),
                    const PopupMenuItem<PopupMenuAction>(
                      value: PopupMenuAction.REQ,
                      child: Text("SALES"),
                    ),
                    const PopupMenuItem<PopupMenuAction>(
                      value: PopupMenuAction.REQ,
                      child: Text("NEAREST"),
                    ),

                  ];
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  // Container(
                  //   height: 30.0,
                  //   width: _size.width/2,
                  //   padding: EdgeInsets.only(
                  //       top: 11,left: 16, right: 16, bottom: 4
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  //     color: Colors.white,
                  //   ),
                  //   child: TextField( 
                  //     decoration: InputDecoration(
                  //       hintText: "Search",
                  //       border: InputBorder.none ,
                  //     ),
                  //   ),
                  // ),
                  Container(
                    width: _size.width/2,
                    height: 25.0,
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'search',
                            hintStyle: TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    width: 0, 
                                    style: BorderStyle.none,
                                ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.only(top: 20, left: 8),
                            fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              FlatButton(
                child: Row(children: <Widget>[Icon(Icons.keyboard_arrow_left, color: Colors.white,),Text("ALL CATEGORIES", style: _theme.textTheme.caption.copyWith(color: Colors.white),)],),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );

    //Cardview
    dynamic _cardView(cardList) {
      var rate = cardList["rate"];
      return Column(
            children: <Widget>[
              Image.network(
                cardList["image"],
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 150.0,
                    width: _size.width,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
              Container(
                height: 80.0,
                padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            maxRadius: 25.0,
                            backgroundImage: NetworkImage(cardList["thumbnail"]),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(cardList["name"]),
                            RatingBarIndicator(
                              rating: rate,
                              itemBuilder: (context, index) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 15.0,
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text("15 minutes ago", style: _theme.textTheme.caption.copyWith(color: _theme.primaryColor),),
                            Text(cardList["city"], style: _theme.textTheme.caption.copyWith(color: _theme.primaryColor),)
                          ],
                        ),
                        PopupMenuButton<PopupMenuAction>(
                          color: Colors.white,
                          onSelected: _onSelectedPopupItem,
                          itemBuilder: (context){
                            return <PopupMenuEntry<PopupMenuAction>>[
                              const PopupMenuItem<PopupMenuAction>(
                                value: PopupMenuAction.CAT,
                                child: Text("ALL CATEGORIES"),
                              ),
                              const PopupMenuItem<PopupMenuAction>(
                                value: PopupMenuAction.REQ,
                                child: Text("REQUEST"),
                              ),
                              const PopupMenuItem<PopupMenuAction>(
                                value: PopupMenuAction.REQ,
                                child: Text("QUESTION"),
                              ),
                              const PopupMenuItem<PopupMenuAction>(
                                value: PopupMenuAction.REQ,
                                child: Text("SALES"),
                              ),
                              const PopupMenuItem<PopupMenuAction>(
                                value: PopupMenuAction.REQ,
                                child: Text("NEAREST"),
                              ),

                            ];
                          },
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(_size.width, 120.0),
        child: _preferredContainer
      ),
      body: ListView.builder(
        itemCount: _cardLists.length,
        itemBuilder: (context, index) {
          var _cardList = _cardLists[index];
          return GestureDetector(
            child: _cardView(_cardList),
            onTap: (){}
          );
        },
      ),
    );
  }
}

enum PopupMenuAction {CAT,REQ, QUEST, SALE, NEAR}