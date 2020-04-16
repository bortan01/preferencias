import 'package:flutter/material.dart';



class  SettingsPage extends StatelessWidget {
  static final String routeName = 'settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ajustes"),
        ),
        body: new Center(
          child: new Text("ajuste page "),
        )
    );
  }
}
