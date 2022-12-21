import 'package:flutter/material.dart';

class SheepCategoryScreen extends StatefulWidget {
  const SheepCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SheepCategoryScreen> createState() => _SheepCategoryScreenState();
}

class _SheepCategoryScreenState extends State<SheepCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sheep'),
      ),
    );
  }
}
