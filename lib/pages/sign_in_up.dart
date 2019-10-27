import 'package:flutter/material.dart';
import 'package:gpm_tracking_v2/pages/login.dart';

void main() => runApp(SignInUp());

class SignInUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(top: 30, right:15, bottom: 10, left: 15),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(27),
                topRight: const Radius.circular(27),
                bottomLeft: const Radius.circular(59),
                bottomRight: const Radius.circular(59),

              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xFF65B04B),
                  Color(0xFF409422),
                  Color(0xFF409422),
                  Color(0xFF65B04B),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -320,
            child: Container(
              height: 380,
              width: 270,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color: Colors.black54,
                    blurRadius: 10.0,
                  ),]

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top:20, left: 15),
                    child: Row(
                      children: <Widget>[
                        Text("Login ", style: TextStyle(fontWeight: FontWeight.w500,),),
                        Text("Registro ", style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(3),
                    child: SignIn(),
                  ),
                ],
              ),
            ),
          ),

        ],
        overflow: Overflow.visible,
      ),

    );
  }
}

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  String _email = '';
  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
        ],
      )

    );
  }
  Widget _crearEmail() {

    return TextField(
      
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(

        hintText: 'Email',
        suffixIcon: Icon( Icons.email, color: Colors.green),
        //suffixIcon: Icon( Icons.alternate_email ),
        hoverColor: Colors.black12,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
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
      
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open, color: Colors.blue, ),
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
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

