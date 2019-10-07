import 'package:flutter/material.dart';

void main() => runApp(SignInUp());

class SignInUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(30.0),
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


            bottom: -290,

            child: Container(
              height: 350,
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
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Text("Login ", style: TextStyle(fontWeight: FontWeight.w500,),),
                        Text("Registro ", style: TextStyle(fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("EMAIL", style: TextStyle(),),
                        Container(
                          height: 33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              )
                          ),
                        )

                      ],
                    ),
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