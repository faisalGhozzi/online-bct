import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Flen Ben Foulen"), 
            accountEmail: Text("Flen123")),
          ListTile(
            leading: const Icon(Icons.money_outlined),
            title: const Text('Mes transactions'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text('Déconnexion'),
            onTap: () => Navigator.popAndPushNamed(context, '/nav_menu_login'),
          )
        ],
      ),
    );
  }
}