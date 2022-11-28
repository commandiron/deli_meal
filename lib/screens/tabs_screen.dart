import 'package:deli_meal/screens/categories/categories_screen.dart';
import 'package:deli_meal/screens/favorites/favorites_screen.dart';
import 'package:deli_meal/screens/drawer/main_drawer.dart';
import 'package:flutter/material.dart';

import '../models/meal.dart';

class TabsScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;

  TabsScreen(this.favoriteMeals);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

  List<Map<String, Object>> _screens;

  int _selectedScreenIndex = 0;

  @override
  void initState() {
    _screens = [
      {"page" : CategoriesScreen(), "title" : "Categories"},
      {"page" : FavoritesScreen(widget.favoriteMeals), "title" : "Favorites"},
    ];
    super.initState();
  }

  void _onTab(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]["title"]),
      ),
      drawer: MainDrawer(),
      body: _screens[_selectedScreenIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTab,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            label: "Categories"
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            label: "Favorites"
          )
        ],
      ),
    );
  }
}
