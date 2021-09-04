import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

import 'minha_historia.dart';
import 'tecnologias.dart';

class Contatos extends StatefulWidget {
  Contatos({Key? key}) : super(key: key);

  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contatos",
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
        body: Container(
          color: Colors.black,
          height: 700,
          
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      size: 50,
                      color: Colors.white,
                    ),
                    onPressed: () async => await launch(
                        "https://www.linkedin.com/in/rodrigo-sbampato-63352697/")),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.githubAlt,
                      size: 50,
                      color: Colors.white,
                    ),
                    onPressed: () async =>
                        await launch("https://github.com/rodrigosbampato1")),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 50,
                      color: Colors.white,
                    ),
                    onPressed: () async =>
                        await launch("https://www.instagram.com/dinisrodrigo_/")
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      size: 50,
                      color: Colors.white,
                    ),
                    onPressed: () async =>
                        await launch("https://wa.me/${5511960232774}")
                ),
                
                



                
              ]
          ),
        )
    );
  }
}
