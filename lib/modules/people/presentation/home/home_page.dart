import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/ui/ui.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key}) {
    Modular.to.navigate('/people/generate/');
  }

  @override
  Widget build(BuildContext context) {
    return PeopleScaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Images.background.image(
                fit: BoxFit.fill,
              ),
            ),
            const RouterOutlet(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
