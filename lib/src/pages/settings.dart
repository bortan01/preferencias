import 'package:flutter/material.dart';
import 'package:preferencias/src/widgets/menu_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundarios = false;
  int genero = 1;
  String nombre = 'pedro';
  TextEditingController _textControllert;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textControllert = new TextEditingController(text:  nombre);
    cargarPreferencias();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ajustes"),
        ),
        drawer: MenuWidget(),
        body: new ListView(
          children: <Widget>[
            new Container(
              child: new Text(
                "settings",
                style:
                    new TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.all(5.0),
            ),
            new Divider(),
            new SwitchListTile(
                value: _colorSecundarios,
                title: new Text("color sec undario"),
                onChanged: (value) {
                  setState(() {
                    _colorSecundarios = value;
                  });
                }),
            new RadioListTile(
              value: 1,
              groupValue: genero,
              onChanged: _setSelectedRadio,
              title: new Text("masculino"),
            ),
            new RadioListTile(
              value: 2,
              groupValue: genero,
              onChanged: _setSelectedRadio,
              title: new Text("Femenino"),
            ),
            new Divider(),
            new Container(
              child: new TextField(
                controller: _textControllert,
                decoration: new InputDecoration(
                    labelText: 'nombre',
                    helperText: "nombre de la persona usando el telefono"),
                onChanged: (String texto) {},
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
            )
          ],
        ));
  }

  Future<void> _setSelectedRadio(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('genero', value);
    setState(() {
      genero = value;
    });
  }

  Future<void> cargarPreferencias() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    genero = preferences.getInt('genero');
    setState(() {});
  }
}
