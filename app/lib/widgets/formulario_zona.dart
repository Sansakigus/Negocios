import 'package:flutter/material.dart';

class formularioZona extends StatefulWidget {
  @override
  _formularioZonaState createState() => _formularioZonaState();
}

class _formularioZonaState extends State<formularioZona> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Codigo', 
              hintText: 'Codigo', 
              icon: Icon(Icons.code)),
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Nombre',
              hintText: 'Nombre',
              icon: Icon(Icons.person)),
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'EstadoRegistro',
              hintText: 'EstadoRegistro',
              icon: Icon(Icons.store)),
        ),
        RaisedButton(
          child: Text('Guardar'),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ],
    );
  }
}