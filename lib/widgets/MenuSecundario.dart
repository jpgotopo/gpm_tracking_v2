import 'package:flutter/material.dart';

Widget _menuSecundarioA() {
  return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          shape: BoxShape.circle,


                        ),
                      ),
                      Icon(Icons.lightbulb_outline, color: Colors.white, size: 32.0,),

                    ],
                  ),
                  Text("Claridad en "),
                  Text("el Llamado")

                ],

              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 45.0,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,


                        ),
                      ),
                      Icon(Icons.map, color: Colors.white, size: 28.0,),

                    ],
                  ),
                  Text("Lugar del"),
                  Text("Llamado")

                ],

              ),

            ],
          );
}