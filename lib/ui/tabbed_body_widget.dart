import 'package:flutter/material.dart';

class TabbeBodyWidget extends StatelessWidget {
  final Color color;

  const TabbeBodyWidget(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
