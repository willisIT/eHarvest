import 'package:flutter/material.dart';

class ForgotPasswordUpdatePage extends StatefulWidget {
  @override
  _ForgotPasswordUpdatePageState createState() => _ForgotPasswordUpdatePageState();
}

class _ForgotPasswordUpdatePageState extends State<ForgotPasswordUpdatePage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          height: _size.height,
          width: _size.width,
          color: _theme.primaryColor,
          child: Column(
            children: <Widget>[
              ClipPath(
                child: Container(
                  height: _size.height/2.0,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(margin: EdgeInsets.only(bottom: 20.0), child: Text("Rest Password".toUpperCase(), style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w500, fontSize: 18.0),)),
                        Icon(Icons.mail, color: _theme.primaryColor, size: 50.0,),
                        ClipPath(
                          child: Container(
                            color: _theme.primaryColor,
                            height: 50.0,
                            width: 100.0,
                          ),clipper: CurvedClipper(),
                        ),
                        Text("Enter Your New Password", style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w500, fontSize: 18.0),),
                      ],
                    ),
                  ),
                ),
                clipper: MyClipper(),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                              ),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "Enter Your Mobile Number",
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(width: _size.width, height: 1.0,color: Colors.white,),
                            SizedBox(height: 10.0,)
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                              ),
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "Enter Your Mobile Number",
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(width: _size.width, height: 1.0,color: Colors.white,)
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("SEND OTP", 
                          style: _theme.textTheme.subtitle.copyWith(
                            color: Colors.white, 
                            shadows: <Shadow>[
                              Shadow(
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                blurRadius: 8.0,
                                color: Color.fromARGB(125, 0, 0, 255),
                              ),
                            ])),
                          SizedBox(
                            width: 60.0,
                            height: 60.0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 10
                                  )
                                ]
                              ),
                              child: FlatButton(
                                child: Icon(Icons.arrow_forward),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Offset _offsetEndpoint = new Offset(size.width, size.height-50.0);
    Offset _offsetControllpoint = new Offset(size.width/2.0, size.height);
    Path _path = new Path();
    _path.lineTo(0.0, size.height-50.0);
    _path.quadraticBezierTo( _offsetControllpoint.dx, _offsetControllpoint.dy, _offsetEndpoint.dx, _offsetEndpoint.dy,);
    _path.lineTo(size.width, size.height-50.0);
    _path.lineTo(size.width, 0.0);
    _path.close();
    return _path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }

}

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path _path = new Path();
    _path.lineTo(0.0, 0.0);

    Offset _firstController = new Offset(size.width/2.0, size.height);
    Offset _firstEndpoint = new Offset(size.width, 0.0);
    _path.quadraticBezierTo(_firstController.dx, _firstController.dy, _firstEndpoint.dx, _firstEndpoint.dy);

    _path.lineTo(size.width, 0.0);

    Offset _secondController = new Offset(size.width/2.0, size.height-10);
    Offset _secondEndpoint = new Offset(0.0, 0.0);

    _path.quadraticBezierTo(_secondController.dx, _secondController.dy, _secondEndpoint.dx, _secondEndpoint.dy);
    _path.close();

    return _path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }

}