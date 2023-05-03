import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppRouting {
  static final List<ModularRoute> routes = [
    ChildRoute<dynamic>('/', child: (context, args) => Container()),
  ];
}
