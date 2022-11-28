import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {

  final IconData icon;
  final String title;
  final Function onTab;

  DrawerItem({this.icon, this.title, this.onTab});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTab,
    );
  }
}
