import 'package:flutter/material.dart';

class GoatCategoryScreen extends StatefulWidget {
  const GoatCategoryScreen({Key? key}) : super(key: key);

  @override
  State<GoatCategoryScreen> createState() => _GoatCategoryScreenState();
}

class _GoatCategoryScreenState extends State<GoatCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(4, 9, 35, 1),
                Color.fromRGBO(39, 105, 171, 1),
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
      ],
    );
  }
}
