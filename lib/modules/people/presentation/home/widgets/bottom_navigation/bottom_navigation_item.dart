import 'package:flutter/material.dart';

class BottomNavigationItem {
  BottomNavigationItem({
    required this.route,
    required this.title,
    required this.icon,
  });

  final String route;
  final String title;
  final IconData icon;
}
