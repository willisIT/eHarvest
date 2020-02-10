import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  String _text;
  TextEditingController _controller;

  final String _user = "Willis It";

  final List<String> _avatars = [
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
    "https://c4.wallpaperflare.com/wallpaper/500/442/354/outrun-vaporwave-hd-wallpaper-thumb.jpg"
  ];

  final List<Message> _messages = [
    Message(0, "hello"),
    Message(0, "How are you doing?"),
    Message(1, "hi"),
    Message(1, "I am doing well"),
    Message(1, "What about you?"),
    Message(0, "I am fine too.")

    ,
    Message(0, "Lorem uh foi hh fghio Lorem uh foi hh fghioLorem uh foi hh fghio vv Lorem uh foi hh fghio Lorem uh foi hh fghio Lorem uh foi hh fghio"),
    Message(1, "hi"),
  ];

  void _onSelectedPopupItem(PopupMenuAction item){}

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;

    Row _buildMessageRow(Message m, {bool current}){
      return Row(
        mainAxisAlignment: current?MainAxisAlignment.end:MainAxisAlignment.start,
        crossAxisAlignment: current?CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: <Widget>[
          current?Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        constraints: BoxConstraints(maxWidth: _size.width-100.0),
                        decoration: BoxDecoration(
                          color: _theme.primaryColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0), bottomLeft: Radius.circular(20.0))
                        ),
                        child: Text(m.des, softWrap: true, style: TextStyle(color: Colors.white),),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: CustomPaint(
                          foregroundPainter: ChatBubbleTriangleRight(_theme),
                        )
                      )
                    ],
                  ),
                  SizedBox(width: 10.0,),
                  CircleAvatar(
                    backgroundImage: NetworkImage(current?_avatars[0]:_avatars[1]),
                    radius: 15.0,
                  )
                ],
              ):Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(current?_avatars[0]:_avatars[1]),
                radius: 15.0,
              ),
              SizedBox(width: 10.0,),
              Stack(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints(maxWidth: _size.width),
                    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0))
                    ),
                    child: Text(m.des, softWrap: true, style: TextStyle(color: Colors.black),),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: CustomPaint(
                      foregroundPainter: ChatBubbleTriangleLeft(_theme),
                    )
                  )
                ],
              )
            ],
          )
        ],
      );
    }
    Container _buildBottomerBar(BuildContext context) {
      return Container(
        height: kToolbarHeight ,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: _theme.primaryColor
        ),
        child: Row(
          // mainAxisAlignment :MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type your message...",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send, size: 50.0,color: Colors.white,), 
              onPressed: null
            ),
          ],
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: _size.height,
            color: _theme.primaryColor,
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                    onPressed: (){},
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 5.0,),
                      CircleAvatar(
                        backgroundImage: NetworkImage(_avatars[0]),
                        radius: 25,
                      ),
                      SizedBox(height: 5.0,),
                      Text(_user, style: TextStyle(color: Colors.white),)
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 110.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0), topRight: Radius.circular(50.0)),
              color: Colors.white,

            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      separatorBuilder: (context, index){
                        return const SizedBox(height: 10.0,);
                      }, 
                      reverse: true,
                      itemCount: _messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        Message m = _messages[index];
                        if(m._user == 0) return _buildMessageRow(m, current: true);
                        return _buildMessageRow(m, current: false);
                      }, 
                    ),
                  ),
                ),
                  _buildBottomerBar(context)

              ],
            ),
          ),
        ],
      )
    );
  }
}

class ChatBubbleTriangleLeft extends CustomPainter {
  final ThemeData theme;

  ChatBubbleTriangleLeft(this.theme);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.black12;

    Path path = new Path();
    path.lineTo(-10, 0);
    path.lineTo(0, -10);
    path.lineTo(0, 0);
    path.close();
    return canvas.drawPath(path, paint);
  }

  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
  
}

class ChatBubbleTriangleRight extends CustomPainter {
  final ThemeData theme;

  ChatBubbleTriangleRight(this.theme);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = theme.primaryColor;

    Path path = new Path();
    path.lineTo(0, -10);
    path.lineTo(10, 0);
    path.lineTo(0, 0);
    path.close();
    return canvas.drawPath(path, paint);
  }

  

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
  
}

class Message {
  final int _user;
  final String des;

  Message(this._user,this.des);
}

enum PopupMenuAction {CAT,REQ, QUEST, SALE, NEAR}