

import 'package:flutter/material.dart';
import '../favor/favor.dart';
import '../home/home.dart';
final List<Widget> pages = [HYFavorScreen(),HYHomeScreen()];
final List<BottomNavigationBarItem> items= [
  BottomNavigationBarItem(
      title:Text('首页'),
      icon: Icon(Icons.home)
  ),
  BottomNavigationBarItem(
      title:Text('收藏'),
      icon: Icon(Icons.star)
  ),
];