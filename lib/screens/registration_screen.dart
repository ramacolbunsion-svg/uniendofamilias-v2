
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _region = TextEditingController();
  final _commune = TextEditingController();
  bool _isAdult = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrarse')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _name, decoration: InputDecoration(labelText: 'Nombre completo')),
            TextField(controller: _email, decoration: InputDecoration(labelText: 'Correo electrónico')),
            TextField(controller: _region, decoration: InputDecoration(labelText: 'Región')),
            TextField(controller: _commune, decoration: InputDecoration(labelText: 'Comuna')),
            Row(children: [
              Checkbox(value: _isAdult, onChanged: (v){ setState(()=> _isAdult = v ?? false); }),
              Expanded(child: Text('Confirmo que soy mayor de 18 años y deseo participar como voluntario y colaborador.')),
            ]),
            SizedBox(height: 12),
            ElevatedButton(child: Text('Registrar'), onPressed: (){
              if(_name.text.isEmpty || _email.text.isEmpty || !_isAdult){
                showDialog(context: context, builder: (_)=> AlertDialog(title: Text('Atención'), content: Text('Por favor, completa tus datos y confirma que eres mayor de edad.'), actions: [TextButton(onPressed: ()=>Navigator.pop(context), child: Text('OK'))]));
                return;
              }
              showDialog(context: context, builder: (_)=> AlertDialog(title: Text('Registro'), content: Text('Registro completado. Ahora puedes enviar una solicitud.'), actions: [TextButton(onPressed: ()=> Navigator.popUntil(context, (route)=> route.isFirst), child: Text('OK'))]));
            })
          ],
        ),
      ),
    );
  }
}
