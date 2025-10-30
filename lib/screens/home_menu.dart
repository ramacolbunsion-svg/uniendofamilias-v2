
import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Uniendo Familias')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(child: Text('Solicitar ayuda'), onPressed: (){}),
            ElevatedButton(child: Text('Subir imágenes'), onPressed: (){}),
            ElevatedButton(child: Text('Mapa de lugares'), onPressed: (){}),
            ElevatedButton(child: Text('Ver solicitudes activas'), onPressed: (){}),
            ElevatedButton(child: Text('Agradecimientos'), onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
