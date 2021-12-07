import 'package:app/widgets/formulario_cliente.dart';
import 'package:app/widgets/formulario_zona.dart';
import 'package:flutter/material.dart';
import 'package:app/widgets/formulario_maestro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Negocios Electronicos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Maestro(),
    );
  }
}
class Maestro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Negocios Electronicos'),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Ingresar'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MaestroClientes()),
                        );
                      },
                    ),
                    Text('Maestro Clientes'),
                  ],
                ),
              ),
            ),
            Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Ingresar'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TipoCliente()),
                        );
                      },
                    ),
                    Text('Tipo Cliente'),
                  ],
                ),
              ),
            ),
            Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Ingresar'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Zonas()),
                        );
                      },
                    ),
                    Text('Zonas'),
                  ],
                ),
              ),
            ),
             Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Ingresar'),
                      onPressed: () {
                        //Editar                     
                      },
                    ),
                    Text('Mostrar'), //mostrar tablas
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}

class MaestroClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maestro Clientes'),
      ),
      body: formularioMaestro(),
    );
  }
}
class TipoCliente extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipo Cliente'),
      ),
      body: formularioCliente(),
    );
  }
}
class Zonas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zonas'),
      ),
      body: formularioZona(),
    );
  }
}