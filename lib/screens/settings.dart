import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {

    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;  

    //AppBar Peferred Container
    Container _preferredContainer = Container(
      height: 120.0,
      color: _theme.primaryColor,
      padding: EdgeInsets.only(top: 10.0, left: 8.0, bottom: 8.0),
      child: Center(child: Text("Settings".toUpperCase(), style: GoogleFonts.montserrat(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),),)
    );


    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(_size.width, 120.0),
        child: _preferredContainer
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Column(
              children: <Widget>[
                //Password
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Password", style: GoogleFonts.montserrat(
                      color: Colors.grey
                    ),),
                    SizedBox(height: 8.0,),
                    settingsTile(_theme, Icons.vpn_key, "Change Password", (){})
                  ],
                ),
                SizedBox(height: 10.0,),
                //Support
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Support", style: GoogleFonts.montserrat(
                      color: Colors.grey
                    ),),
                    SizedBox(height: 8.0,),
                    settingsTile(_theme, Icons.phone_android, "Contact Us", (){})
                  ],
                ),
                SizedBox(height: 10.0,),
                //Other
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Other", style: GoogleFonts.montserrat(
                      color: Colors.grey
                    ),),
                    SizedBox(height: 8.0,),
                    settingsTile(_theme, Icons.question_answer, "How it Works", (){}),
                    settingsTile(_theme, Icons.arrow_forward, "Reffer a friend", (){}),
                    settingsTile(_theme, Icons.help_outline, "Help", (){}),
                    settingsTile(_theme, Icons.notifications_none, "Notification", (){})
                  ],
                ),
                SizedBox(height: 10.0,),
                //Logout
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Log Out", style: GoogleFonts.montserrat(
                      color: Colors.grey
                    ),),
                    SizedBox(height: 8.0,),
                    settingsTile(_theme, Icons.exit_to_app, "Log Out", (){})
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container settingsTile(ThemeData theme, IconData iconLead, String title, Function function) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: ListTile(
        leading: Icon(iconLead, color: theme.primaryColor,),
        title: Text(title, style: TextStyle(color: theme.primaryColor),),
        trailing: Icon(Icons.keyboard_arrow_right, color: theme.primaryColor),
        onTap: function,
      ),
    );
  }
}