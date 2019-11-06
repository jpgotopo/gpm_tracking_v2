import 'package:flutter/material.dart';
import 'package:gpm_tracking_v2/pages/login.dart';

void main() => runApp(SignInUp());

class SignInUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context); 
    return Container(

      padding: EdgeInsets.only(top: 30, right:15, bottom: 10, left: 15),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: data.size.height*0.4,
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
            Container(
              height: data.size.height*0.1,
              decoration: BoxDecoration(
                color: Colors.white,
              ),

            )
            ],
            
          ),
          Positioned(
            
            child: Container(
              height: data.size.height*0.55,
              width: data.size.width*0.75,
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
                
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){},
                          textColor: Colors.blue,
                          disabledColor: Colors.grey,
                          child:Text("Login ", style: TextStyle(fontWeight: FontWeight.w500,),),
                        ),
                        FlatButton(
                          onPressed: (){},
                          disabledColor: Colors.grey,
                          child:Text("Registro ", style: TextStyle(fontWeight: FontWeight.w500),),
                        ),

                        
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
          
          _notaLogin(),
          SizedBox(height: 10.0,),
          RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF127BB8),
                  Color(0xFF3594C9),
                  
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              '       Entrar       ',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
          
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

Widget _notaLogin(){

  return Row(
    children: <Widget>[
      Checkbox(
        value: false,
        onChanged: (value){
          
        },
      ),
      Text('Mantenerse Logueado ', style: TextStyle(fontSize: 10.0, color: Colors.grey),),
      SizedBox(width: 8.0,),
      Text('Olvidé Contraseña', style: TextStyle(fontSize: 10.0, color: Colors.blueAccent),),
    ],
  );

}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _notaLogin()
      ],
    );
  }
}