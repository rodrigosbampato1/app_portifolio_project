
import 'package:app_portifolio/pages/tecnologias.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contatos.dart';

class MinhaHistoria extends StatefulWidget {
  MinhaHistoria({Key? key}) : super(key: key);

  @override
  _MinhaHistoriaState createState() => _MinhaHistoriaState();
}

class _MinhaHistoriaState extends State<MinhaHistoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Minha História",
              style: GoogleFonts.pressStart2p(
                  textStyle: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -2.5))),
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: Text("Sobre Mim", style: TextStyle(fontSize: 24)),
              decoration: BoxDecoration(
                  // color: Colors.deepOrange,
                  gradient: LinearGradient(colors: [
                Colors.blue.shade100,
                Colors.orange.shade100,
              ])),
            ),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text("Tecnologias"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Tecnologias()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Minha História"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MinhaHistoria()));
              },
            ),

            ListTile(
              leading: Icon(Icons.help),
              title: Text("Contatos"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contatos()));
              },
            ),
          ],
        )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    
                    child: Image.asset(
                      "assets/images/foto.jpeg",
                      height: 270,
                      width: 270,
                      alignment: Alignment.center,
                      
                    ),
                    
                  ),
                  Text(
                    "Rodrigo Sbampato",
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                    
                  ),

                  ListTile(
                    title:Text(
                      "Minha Trajetória : Apaixonado por Tecnologia , resolvi migrar da área Comercial para Desenvolvimento de Sistemas .",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.martel(
                      textStyle: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -1.5))
                    ),
                  )
                ],
              ),
            ),
            
          ),
          
        ));
  }
}
