
import 'package:flutter/material.dart';

import 'pages/apresentacao_inicial.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Apresentação',
      home: PrimeiraPage(),
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        

      ),
      
      
      
      
      );
  }
}
