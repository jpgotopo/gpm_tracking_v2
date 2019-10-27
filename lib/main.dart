import 'package:flutter/material.dart';
import 'package:gpm_tracking_v2/pages/inicio.dart';
import 'package:gpm_tracking_v2/pages/login_registro.dart';
import 'package:gpm_tracking_v2/pages/sign_in_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GPM Tracking',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _layoutPage = [
    RegistroLogin(),
    Inicio(),
  ];

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _layoutPage.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Inicio')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.save),
                title: Text('Guardar')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.view_agenda),
                title: Text('Notas')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.inbox),
                title: Text('Mensaje')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Mi Cuenta')
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onTabItem,
        )
    );
  }
}