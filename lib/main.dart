import 'package:flutter/material.dart';
import 'package:preferencias/src/pages/home.dart';
import 'package:preferencias/src/pages/settings.dart';
import 'package:preferencias/src/prueba.dart';
import 'package:preferencias/src/share_preferencias/preferencias_usuario.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName     : ( BuildContext context ) => HomePage(),
        SettingsPage.routeName : ( BuildContext context ) => SettingsPage(),
        'prueba' :( BuildContext context ) => Prueba(),
      },
    );
  }
}