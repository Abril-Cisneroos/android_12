import 'package:flutter/material.dart';

class Cliente {
  final int idCliente;
  final String nombre;
  final String direccion;

  Cliente({
    required this.idCliente,
    required this.nombre,
    required this.direccion,
  });
}

class ClienteContainer extends StatelessWidget {
  final Cliente cliente;
  final Color color; // Agregamos un parámetro para el color

  ClienteContainer({required this.cliente, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color, // Usamos el color proporcionado

        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          // Agregamos la sombra
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ID: ${cliente.idCliente}'),
          Text('Nombre: ${cliente.nombre}'),
          Text('Dirección: ${cliente.direccion}'),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clientes'),
          centerTitle: true,
          backgroundColor: Color(0xff60ccd4), // Agrega color a la AppBar
        ),
        body: ListView(
          children: [
            ClienteContainer(
              cliente: Cliente(
                idCliente: 22308051281162,
                nombre: 'Frida Abril Cisneros Hernandez',
                direccion: 'Ciudad',
              ),
              color: Color(0xffb3c4fc)!, // Color para el primer contenedor
            ),
            ClienteContainer(
              cliente: Cliente(
                idCliente: 2,
                nombre: 'María García',
                direccion: 'Avenida 456, Pueblo',
              ),
              color: Color(0xff98a2fd)!, // Color para el segundo contenedor
            ),
            ClienteContainer(
              cliente: Cliente(
                idCliente: 3,
                nombre: 'Pedro López',
                direccion: 'Plaza Mayor, Villa',
              ),
              color: Color(0xffb3c4fc)!, // Color para el tercer contenedor
            ),
            ClienteContainer(
              // Agrega un cuarto contenedor
              cliente: Cliente(
                idCliente: 4,
                nombre: 'Laura Martinez',
                direccion: 'Calle Sol, Pueblo',
              ),
              color: Color(0xff9ba8ef)!,
            ),
            ClienteContainer(
              // Agrega un quinto contenedor
              cliente: Cliente(
                idCliente: 5,
                nombre: 'Carlos Ramirez',
                direccion: 'Avenida Luna, Ciudad',
              ),
              color: Color(0xffb3c4fc)!,
            ),
          ],
        ),
      ),
    );
  }
}
