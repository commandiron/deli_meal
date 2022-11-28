import 'package:flutter/material.dart';

class FilterSwitch extends StatelessWidget {

  final String title;
  final bool value;
  final String subTitle;
  final ValueChanged<bool> onChanged;

  FilterSwitch({
    this.title,
    this.value,
    this.subTitle,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      subtitle: Text(subTitle),
      onChanged: onChanged,
    );
  }
}
