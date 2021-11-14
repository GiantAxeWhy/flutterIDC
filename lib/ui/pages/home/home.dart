import 'package:flutter/material.dart';


import 'package:idc/ui/pages/home/home_content.dart';

class HYHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IDC'),
    ),
      body: HYHomeContent(),
    );
  }
}
