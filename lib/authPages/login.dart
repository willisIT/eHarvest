import 'package:eharvest/authPages/signup.dart';
import 'package:eharvest/screens/forgotPassword/forgot_password.dart';
import 'package:eharvest/screens/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;

    List<TextField> _textField = [
      TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            icon: Icon(Icons.person_outline, color: _theme.primaryColor,),
            hintText: "Username",
            border: InputBorder.none,
          ),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.vpn_key, color: _theme.primaryColor,),
            hintText: "Password",
            border: InputBorder.none,
          ),
        ),
    ];

    final _loginButton = Material(
      borderRadius: BorderRadius.circular(32.0),
      shadowColor: Colors.black12,
      elevation: 5.0,
      color: Colors.white,
      child: MaterialButton(
        minWidth: _size.width/1.2,
        height: 42.0,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        child: Text("Login", style: _theme.textTheme.subhead.copyWith(color: _theme.primaryColor)),
      ),
    );

    final _socailButtons = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 70.0,
          height: 70.0,
          child: FlatButton(
            child: Image.asset("images/fb.png"),
            shape: StadiumBorder(),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: 80.0,
          height: 80.0,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("images/google.jpg"),
              )
            ),
            child: FlatButton(
              child: Text(" "),
              onPressed: () {},
            ),
          ),
        )
      ],
    );

    final _forgotPassword = Align(
      child: Padding(
        padding: EdgeInsets.only(right: 30.0),
        child: FlatButton(
          child: Text(
            "Forgot Password",
            style: _theme.textTheme.caption.copyWith(color: Colors.grey),
          ),
          onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordPage())),
        )
      ),
      alignment: Alignment.centerRight,
    );
    final _signupButton = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Dont have an account?",
          style: _theme.textTheme.caption.copyWith(color: Colors.grey),
        ),
        FlatButton(
          child: Text(
            "Sign Up", style: _theme.textTheme.caption.copyWith(color: _theme.primaryColor),
          ),
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage())),
        )

      ],
    );


    final _forms = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _container(_textField[0]),
        _container(_textField[1]),
        _forgotPassword,
        _loginButton,
        _signupButton,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Text("Or", style: TextStyle(color: Colors.grey),),
        ),
        Text("Connect With", style: TextStyle(color: _theme.primaryColor, fontWeight: FontWeight.w500, fontSize: 20.0)),
        _socailButtons
      ],
    ); 

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(height: _size.height/8,),
            Text(
              "eHarvest",
              style: _theme.textTheme.display1.copyWith(color: _theme.primaryColor),
            ),
            _forms
          ],

        ),
      ),
    );
  }

  Widget _container(TextField textField) {
    return Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: 45,
      margin: EdgeInsets.only(top: 32),
      padding: EdgeInsets.only(
          top: 4,left: 16, right: 16, bottom: 4
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(50)
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 5
            )
          ]
      ),
      child: textField,
    );
  }
}