import 'package:eharvest/authPages/login.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;

    Column _logo = Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          "eHarvest",
          style: _theme.textTheme.display1.copyWith(color: _theme.primaryColor),
        ),
        Container(
          child: Text(
            "Digitalizing Post Harvest Management",
            style: _theme.textTheme.caption,
          ),
        )
      ],
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: _size.width,
          height: _size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(),
              _logo,
              RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                elevation: 2.0,
                child: Text("GET STARTED",style: _theme.textTheme.button.copyWith(color: _theme.primaryColor),
                ),
                hoverElevation: 3.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
                color: Colors.white,
              ),
              //SizedBox(height: 10.0,)
            ],
          ),
        ),
      ),
    );
  }
}