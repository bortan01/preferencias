import 'package:flutter/material.dart';
import 'package:preferencias/src/pages/settings.dart';
import 'package:preferencias/src/share_preferencias/preferencias_usuario.dart';
import 'package:preferencias/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  static final String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("preferencias de usuario"),
        backgroundColor: (prefs.colorSecundario)? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("color secundario " + prefs.colorSecundario.toString()),
          new Divider(),
          new Text("genero " + prefs.genero.toString() ),
          new Divider(),
          new Text("nombre usuario " + prefs.nombreUsuario),
          new Divider(),
        ],
      ),
    );
  }

  _crearMenu(BuildContext context) {
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
            onTap: (){},
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
