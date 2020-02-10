import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {

    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;

    List<String> _dropList = [
      "Agro Dealer/Marketer",
      "Farmer",
      "Financiiiiiial Institution",
      "Farm Tech Manufacturer"
    ];
    String _selectedValue;

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
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            icon: Icon(Icons.phone, color: _theme.primaryColor,),
            hintText: "Phone",
            border: InputBorder.none,
          ),
        ),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: Icon(Icons.email, color: _theme.primaryColor,),
            hintText: "Email",
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
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.vpn_key, color: _theme.primaryColor,),
            hintText: "Confirm Password",
            border: InputBorder.none,
          ),
        ),
    ];

    final _dropdownButton = Container(
      width: MediaQuery.of(context).size.width/1.2,
      height: 45,
      margin: EdgeInsets.only(top: 32.0, bottom: 32.0),
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
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Organization",
          icon: Icon(Icons.calendar_view_day, color: _theme.primaryColor,)
        ),
        value: _selectedValue,
        icon: Icon(Icons.expand_more, color: _theme.primaryColor, size: 40.0,),
        onChanged: (newValue)=>{},
        items: _dropList.map((droplist){
          return DropdownMenuItem(
            child: new Text(droplist),
            value: droplist,
          );
        }).toList(),
      ),
    );

    final _loginButton = Material(
      borderRadius: BorderRadius.circular(32.0),
      shadowColor: Colors.black12,
      elevation: 5.0,
      color: Colors.white,
      child: MaterialButton(
        minWidth: _size.width/1.2,
        height: 42.0,
        onPressed: (){},
        child: Text("Sign Up", style: _theme.textTheme.subhead.copyWith(color: _theme.primaryColor)),
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
              shape: BoxShape.circle
            ),
            child: FlatButton(
              child: Image.asset("images/google.jpg", fit: BoxFit.cover, scale: 4.0,),
              onPressed: () {},
            ),
          ),
        )
      ],
    );

    final _forms = Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _container(_textField[0]),
        _container(_textField[1]),
        _container(_textField[2]),
        _container(_textField[3]),
        _container(_textField[4]),
        _dropdownButton,
        _loginButton,
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
      height: 42,
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