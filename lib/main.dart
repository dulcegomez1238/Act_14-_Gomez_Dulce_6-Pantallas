import 'package:flutter/material.dart';
import 'package:myapp/pantallas/1pagina.dart';
import 'package:myapp/pantallas/2pagina.dart';
import 'package:myapp/pantallas/3pagina.dart';
import 'package:myapp/pantallas/4pagina.dart';
import 'package:myapp/pantallas/5pagina.dart';
import 'package:myapp/pantallas/6pagina.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Florería App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      //mapa de rutas
      '/':(context) => const 1pagina(),
       'segubda':(context) => const 2pagina(),
      'tercera':(context) => const 3pagina(),
      'cuarta':(context) => const 4pagina(),
      'quinta':(context) => const 5pagina(),
      'sexta':(context) => const 6pagina(),
    );
  }
}

