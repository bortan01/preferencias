import 'package:flutter/material.dart';
import 'package:preferencias/src/widgets/menu_widget.dart';



class  SettingsPage extends StatelessWidget {
  static final String routeName = 'settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ajustes"),
        ),
        drawer: MenuWidget(),
        body: new Center(
          child: new Text("ajuste page "),
        )
    );
  }
}
