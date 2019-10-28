import 'package:flutter/material.dart';
import 'package:country_icons/country_icons.dart';
import 'package:gpm_tracking_v2/pages/inicio.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 1.0,
        title: Text('GPM Title'),
        centerTitle: true,
      ), */
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                height: 120.0,
                
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color(0xFFB1E2A1),
                      Color(0xFFA1E7A3),
                      Color(0xFFA1E7A3),
                      Color(0xFFB1E2A1),
                    ],
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('GPM', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.blue, ),),
                    Text('TRACKING', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.green, ))
                  ],
                ),
              ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
            child: Container(
              
              height: 97.0,
              width: 97.0,
              decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:NetworkImage('https://avatars1.githubusercontent.com/u/27728874?s=460&v=4')
                )
              ),
              
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white70,
                  boxShadow: [new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.0,
                  ),]
                ),
              ),
              Text('Jean Paul Gotopo M. ', textAlign: TextAlign.center, style: TextStyle(
               color: Colors.blue[600], fontWeight: FontWeight.w700, fontSize: 20.0),)
            ],
          ),
          
          Divider(),
          Card(
            
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0) ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.scaleDown,
                                image: NetworkImage('https://image.flaticon.com/icons/svg/197/197419.svg')
                            )
                        ),

                      ),
                      Text('INDIA', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Desarrollo Social', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                      
                      Text('34 años', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Ministro Cristiano', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                      
                      Text('Iglesia Peniel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Lima Centro', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),
                      
                      Text('Proyecto Aprobado', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2383C5)),),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: RaisedButton(
                elevation: 5.0,
                shape: RoundedRectangleBorder(),
             onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Inicio()),);
             },
             textColor: Colors.white,
             padding: const EdgeInsets.all(0.0),
             child: Container(
               width: 200.0,
               decoration:  BoxDecoration(
                 borderRadius: new BorderRadius.all(
                   Radius.circular(25)
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
               padding: const EdgeInsets.all(10.0),
               child: const Text(
                 'VOLVER', textAlign: TextAlign.center, style: TextStyle(fontSize: 20)
               ),
             ),
            ),),
          )
        ],
      ),
    );
  }
}