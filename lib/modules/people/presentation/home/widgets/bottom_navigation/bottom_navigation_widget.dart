import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/ui/ui.dart';

import 'bottom_navigation_items.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationListener(
      builder: (_, __) {
        return BottomBarInspiredFancy(
          items: bottomNavigationItems
              .map(
                (e) => TabItem(
                  icon: e.icon,
                  title: e.title,
                ),
              )
              .toList(),
          indexSelected: _getSelectedIndex(),
          onTap: (index) {
            final item = bottomNavigationItems[index];
            Modular.to.navigate(item.route);
          },
          colorSelected: PeopleColors.blue500,
          color: PeopleColors.neutral500,
          backgroundColor: PeopleColors.neutral050,
          titleStyle: Theme.of(context).textTheme.labelMedium,
          pad: 1,
          styleIconFooter: StyleIconFooter.dot,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(25),
              blurRadius: 3,
              offset: const Offset(0, -3),
            )
          ],
        );
      },
    );
  }

  int _getSelectedIndex() {
    final index = bottomNavigationItems.indexWhere(
      (item) {
        return item.route == Modular.to.path;
      },
    );
    return index < 0 ? 0 : index;
  }
}
