import 'package:deli_meal/screens/drawer/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

import '../filters/filters_screen.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              "Cooking Up!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor
              ),
            ),
          ),
          SizedBox(height: 20,),
          DrawerItem(
            icon: Icons.restaurant,
            title: "Meals",
            onTab: () {
              Navigator.of(context).pushReplacementNamed("/");
            }
          ),
          DrawerItem(
            icon: Icons.settings,
            title: "Filters",
            onTab: () {
              Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
            },
          ),
        ],
      )
    );
  }
}
