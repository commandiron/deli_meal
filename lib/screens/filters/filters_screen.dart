import 'package:deli_meal/screens/drawer/main_drawer.dart';
import 'package:deli_meal/screens/filters/widgets/FilterSwitch.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {

  static const routeName = "/filters";

  final Map<String, bool> currentFilters;
  final Function saveFilters;

  FiltersScreen(
    this.currentFilters,
    this.saveFilters
  );

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  var _glutenFree = false;
  var _lactoseFree = false;
  var _vegetarian = false;
  var _vegan = false;


  @override
  void initState() {
    _glutenFree = widget.currentFilters["gluten"];
    _lactoseFree = widget.currentFilters["lactose"];
    _vegetarian = widget.currentFilters["vegan"];
    _vegan = widget.currentFilters["vegetarian"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Filters"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              widget.saveFilters(
                {
                  "gluten" : _glutenFree,
                  "lactose" : _lactoseFree,
                  "vegan" : _vegetarian,
                  "vegetarian" : _vegan
                }
              );
            },
            icon: Icon(Icons.save)
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust your meal selection.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                FilterSwitch(
                  title: "Gluten-free",
                  value: _glutenFree,
                  subTitle: "Only includes gluten-free meals.",
                  onChanged: (value) {
                    setState(() {
                      _glutenFree = value;
                    });
                  },
                ),
                FilterSwitch(
                  title: "Lactose-free",
                  value: _lactoseFree,
                  subTitle: "Only includes lactose-free meals.",
                  onChanged: (value) {
                    setState(() {
                      _lactoseFree = value;
                    });
                  },
                ),
                FilterSwitch(
                  title: "Vegetarian",
                  value: _vegetarian,
                  subTitle: "Only includes vegetarian meals.",
                  onChanged: (value) {
                    setState(() {
                      _vegetarian = value;
                    });
                  },
                ),
                FilterSwitch(
                  title: "Vegan",
                  value: _vegan,
                  subTitle: "Only includes vegan meals.",
                  onChanged: (value) {
                    setState(() {
                      _vegan = value;
                    });
                  },
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
