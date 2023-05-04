import 'package:flutter/material.dart';
import 'package:people_maker/core/core.dart';

import 'bottom_navigation_item.dart';

List<BottomNavigationItem> bottomNavigationItems = [
  BottomNavigationItem(
    route: '/people/generate/',
    title: R.string.generate,
    icon: Icons.add_home_work_outlined,
  ),
  BottomNavigationItem(
    route: '/people/saved/',
    title: R.string.saved,
    icon: Icons.star,
  ),
];
