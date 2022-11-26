import 'package:deli_meal/dummy_data.dart';
import 'package:deli_meal/screens/meal_detail/widget/section_title.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {

  static const routeName = "/meal-detail";

  @override
  Widget build(BuildContext context) {

    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text("${selectedMeal.title}"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SectionTitle("Ingredients"),

          //BU ŞEKİLDE WİDGET'I ÖĞREN NEDEN YAPAMADIM

          SelectionContainer(child: ListView.builder(
              itemBuilder: (context, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(selectedMeal.ingredients[index])
                ),
              ),
              itemCount: selectedMeal.ingredients.length,
            ),
          ),
          SectionTitle("Steps"),
        ],
      ),
    );
  }
}
