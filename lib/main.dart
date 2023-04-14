import 'package:vizeodevi/screens/menupage.dart';
import 'package:vizeodevi/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'screens/homepage.dart';
import 'screens/help.dart';
import 'screens/liked.dart';

final AnaRenk = Color(0xFF87E0EC);                                              //Özel Renklerim
final YesilRenk = Color(0xFF00B972);
final PembeRenk = Color(0xFFff94d4);
final MorRenk = Color(0xFF463b85);
final AcikMorRenk = Color(0xFF6e61b7);
final KoyuYesilRenk = Color(0xFF008080);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,                                        //debug yazısı silindi
      home: Welcome(),

    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ItemForMenu currentItem = MenuItems.books;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,                                                //drawer stili ve sınırları duzenlendi
      angle: 0.0,
      borderRadius: 40,
      showShadow: true,
      backgroundColor: Colors.white54,                                          //renk eklendi
      slideWidth: MediaQuery.of(context).size.width * 0.45,
      mainScreen: getScreen(),
      menuScreen: Builder(
        builder: (context) => MenuPage(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() {
              currentItem = item;
            });
            ZoomDrawer.of(context)!.close();
          },
        ),
      ),
    );
  }

  getScreen() {                                                                 //menu barına ekranlar eklendi
    switch (currentItem) {
      case MenuItems.books:
        return HomePage();
      case MenuItems.liked:
        return Liked();
      case MenuItems.help:
        return Help();
  
    }
  }
}
