import 'package:flutter/material.dart';
import 'package:preferencias/src/pages/home.dart';
import 'package:preferencias/src/pages/settings.dart';
import 'package:preferencias/src/share_preferencias/preferencias_usuario.dart';

Future<void> main() async {
//  final pref= new PreferenciasUsuario();
//  await pref.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
