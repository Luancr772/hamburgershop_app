import 'package:flutter/material.dart';
import 'package:ham_app/components/my_drawer_tile.dart';
import 'package:ham_app/pages/setting_page.dart';
import 'package:ham_app/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logOut() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Image.asset(
            './assets/images/logo.png',
            height: 100,
            width: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        MyDrawerTile(
            text: "H O M E",
            icon: Icons.home,
            onTap: () {
              Navigator.pop(context);
            }),
        MyDrawerTile(
            text: "S E T T I N G S",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            }),
        const Spacer(),
        MyDrawerTile(
            text: "L O G O U T",
            icon: Icons.logout,
            onTap: () {
              logOut();
            }),
        const SizedBox(
          height: 25,
        )
      ]),
    );
  }
}
