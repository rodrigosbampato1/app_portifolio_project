


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contatos.dart';
import 'minha_historia.dart';

class Tecnologias extends StatefulWidget {
  Tecnologias({Key? key}) : super(key: key);

  @override
  _TecnologiasState createState() => _TecnologiasState();
}

class _TecnologiasState extends State<Tecnologias> {
 Widget _buildPage(String text, String asset) {
    return Container(
      
      
      child: Container(
        child: Text(text, 
        style: TextStyle(fontSize: 48.0,
        color: Colors.white
        )
        
        ),
        alignment: Alignment.topCenter,
        
        height: 50,
        width: 50,
        
        
      ),

      
      decoration: BoxDecoration(
          color: Colors.black,
          
          image: DecorationImage(
            
            image: AssetImage(asset),
            
            
            
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tecnologias",
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
        body: PageView(
          
      children: [
        
        _buildPage("HTML", "assets/images/soulflix.jpg"),
        
        _buildPage("JAVASCRIPT", "assets/images/calc.jpg"),
        _buildPage("BOOTSTRAP", "assets/images/campoBoot.jpg"),
      ],
    ));
  }
}