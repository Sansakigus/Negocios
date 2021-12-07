import 'package:flutter/material.dart';

class formularioMaestro extends StatefulWidget {
  const formularioMaestro({Key? key}) : super(key: key);
  @override
  _formularioMaestroState createState() => _formularioMaestroState();

}
class _formularioMaestroState extends State<formularioMaestro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       TextFormField(
         decoration: InputDecoration(
           labelText: 'Codigo',
           hintText: 'Codigo',
           icon: Icon(Icons.code)
         ),
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'Nombre',
           hintText: 'Nombre',
           icon: Icon(Icons.person)
         ),
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'RUC',
           hintText: 'RUC',
           icon: Icon(Icons.code)
         ),
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'Zona',
           hintText: 'Zona',
           icon: Icon(Icons.place)
         ),
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'TipoCliente',
           hintText: 'TipoCliente',
           icon: Icon(Icons.person)
         ),
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'EstadoRegistro',
           hintText: 'EstadoRegistro',
           icon: Icon(Icons.store)
         ),
       ),
       RaisedButton(
         child: Text('Guardar'),
         onPressed: (){
           Navigator.pushNamed(context, '/');
         },
       ),
      ],
    );
  }
}