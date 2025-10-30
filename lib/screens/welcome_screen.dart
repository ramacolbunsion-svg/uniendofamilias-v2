
import 'package:flutter/material.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        color: Color(0xFF0099CC),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', width: 160, height: 160),
            SizedBox(height: 24),
            Text('Bienvenido a Uniendo Familias', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            SizedBox(height: 12),
            Text('Esta comunidad está formada por personas dispuestas a ayudar y a recibir ayuda en la búsqueda de información familiar. Al registrarte, te unes como voluntario y colaborador en este propósito.', style: TextStyle(color: Colors.white70), textAlign: TextAlign.center),
            SizedBox(height: 18),
            Text('"Unidos en amor, recordamos a quienes nos precedieron."', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white70), textAlign: TextAlign.center),
            SizedBox(height: 28),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF0077AA), padding: EdgeInsets.symmetric(horizontal: 36, vertical: 14)),
              child: Text('Comenzar', style: TextStyle(fontSize: 16)),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => RegistrationScreen())),
            )
          ],
        ),
      ),
    );
  }
}
