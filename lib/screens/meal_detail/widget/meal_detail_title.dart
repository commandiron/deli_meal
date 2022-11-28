import 'package:flutter/material.dart';

class MealDetailTitle extends StatelessWidget {

  final String title;

  MealDetailTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
