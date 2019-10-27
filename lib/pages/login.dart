import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text('Inputs de Texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          
        ],
      ),
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