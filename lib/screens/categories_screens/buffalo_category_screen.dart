import 'package:flutter/material.dart';

class BuffaloCategory extends StatefulWidget {
  const BuffaloCategory({Key? key}) : super(key: key);

  @override
  State<BuffaloCategory> createState() => _BuffaloCategoryState();
}

class _BuffaloCategoryState extends State<BuffaloCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buffalo'),
      ),
    );
  }
}
