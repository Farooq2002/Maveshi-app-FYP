import 'package:flutter/material.dart';

class CowCategory extends StatefulWidget {
  const CowCategory({Key? key}) : super(key: key);

  @override
  State<CowCategory> createState() => _CowCategoryState();
}

class _CowCategoryState extends State<CowCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cow screen'),
      ),
    );
  }
}
