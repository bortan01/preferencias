import 'package:flutter/material.dart';
import 'package:preferencias/src/pages/home.dart';
import 'package:preferencias/src/pages/settings.dart';


class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Container(),
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/img.jpg"),
                    fit: BoxFit.cover

                )
            ),
          ),
          new ListTile(
            leading:  new Icon(Icons.pages, color: Colors.blue,),
            title: new Text("pages"),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          new ListTile(
            leading:  new Icon(Icons.party_mode, color: Colors.blue,),
            title: new Text("party mode"),
            onTap: (){},
          ),
          new ListTile(
            leading:  new Icon(Icons.settings, color: Colors.blue,),
            title: new Text("settings"),
            onTap: (){
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
