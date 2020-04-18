import 'package:flutter/material.dart';
import 'package:preferencias/src/share_preferencias/preferencias_usuario.dart';
import 'package:preferencias/src/widgets/menu_widget.dart';



class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundarios;
  int genero = 1;
  String nombre = 'pedro';
  TextEditingController _textControllert;
  final pref = new PreferenciasUsuario();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textControllert = new TextEditingController(text:  pref.nombreUsuario);
    genero = pref.genero;
    _colorSecundarios = pref.colorSecundario;
    pref.ultimaPagina = SettingsPage.routeName;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("ajustes"),
          backgroundColor: (pref.colorSecundario)? Colors.teal : Colors.blue,
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
                    pref.colorSecundario = value;
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
                    helperText: "nombre de la persona usando el telefono"
                ),
                onChanged: (texto) {
                  pref.nombreUsuario= texto;
                  //print(texto);
                },
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
            )
          ],
        ));
  }

  _setSelectedRadio(int value)  {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    await prefs.setInt('genero', value);
//    setState(() {
//      genero = value;
//    });
  pref.genero = value;
  genero = value;
  setState(() {});

  }


}
