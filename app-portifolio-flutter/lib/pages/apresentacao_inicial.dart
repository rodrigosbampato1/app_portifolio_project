
import 'package:app_portifolio/pages/tecnologias.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'minha_historia.dart';

class PrimeiraPage extends StatefulWidget {
  PrimeiraPage({Key? key}) : super(key: key);

  @override
  _PrimeiraPageState createState() => _PrimeiraPageState();
}

class _PrimeiraPageState extends State<PrimeiraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text("Meu Portifolio",
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
                    MaterialPageRoute(builder: (context) => MinhaHistoria()));
              },
            ),
          ],
        )),
        body: SingleChildScrollView(
          
          child: Container(
            color: Colors.black,
            child: Padding(
              
              padding: EdgeInsets.all(24.0),
              child: Form(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  
                  children: [
                    Container(
                      
                      child: Image.asset(
                        "assets/images/fenix.jpg",
                        
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          ),

         
        )
    );
  }
}