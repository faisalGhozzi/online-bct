import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_bct/view/nav_menu_login/contact.dart';
import 'package:online_bct/view/nav_menu_login/informations.dart';
import 'package:online_bct/view/nav_menu_login/login.dart';
import 'package:online_bct/view/nav_menu_login/reclamations.dart';
import 'package:online_bct/view/nav_menu_login/succursales.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Login(),
    Succursales(),
    Reclamations(),
    Contact(),
    Informations()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: _pages.elementAt(_selectedIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.blue),
            label: 'Accueil'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop_outlined, color: Colors.blue),
            label: 'Succursales'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline, color: Colors.blue),
            label: 'Réclamations'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_outlined, color: Colors.blue),
            label: 'Contact'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline, color: Colors.blue),
            label: 'Informations'
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}