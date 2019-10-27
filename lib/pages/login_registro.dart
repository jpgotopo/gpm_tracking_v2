import 'package:flutter/material.dart';

class RegistroLogin extends StatefulWidget {
  @override
  _RegistroLoginState createState() => _RegistroLoginState();
}

class _RegistroLoginState extends State<RegistroLogin> {
  String _nombre = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
        ],
      ),
    );
  }
  Widget _crearInput() {

    return TextField(
      decoration: InputDecoration(
        labelText: 'Nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),

      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor; 
        });
      },
    );
  }

  Widget _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email ),
        icon: Icon (Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onChanged: (valor) {

        setState(() {
          _email = valor;
        });
        
        
      },
    );

  }

  Widget _crearPassword() {
    return TextField(
      //autofocus: true,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open ),
        icon: Icon (Icons.lock),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onChanged: (valor) {

        setState(() {
          _nombre = valor;
        });
        
        
      },
    );
  }
}