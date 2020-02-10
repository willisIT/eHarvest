import 'package:eharvest/chatPages/chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {

    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;

    //AppBar Peferred Container
    Container _preferredContainer = Container(
      height: 120.0,
      color: _theme.primaryColor,
      padding: EdgeInsets.only(top: 10.0, left: 8.0, bottom: 8.0),
      child: Center(child: Text("Help".toUpperCase(), style: GoogleFonts.montserrat(
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
                //Other
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    settingsTile(_theme, Icons.question_answer, "FAQs", (){}),
                    settingsTile(_theme, Icons.tv, "Trade Policy", (){}),
                    settingsTile(_theme, Icons.markunread_mailbox, "Terms and Conditions", (){}),
                    settingsTile(_theme, Icons.chat, "Live Chat", ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage())))
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


  Container settingsTile(ThemeData theme, IconData iconLead, String title, Function function) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
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