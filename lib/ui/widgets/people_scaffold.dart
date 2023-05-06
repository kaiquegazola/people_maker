import 'package:flutter/material.dart';
import 'package:people_maker/ui/ui.dart';

class PeopleScaffold extends StatelessWidget {
  const PeopleScaffold({
    required this.body,
    super.key,
    this.bottomNavigationBar,
    this.appBar,
  });

  final Widget body;
  final Widget? bottomNavigationBar;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar ??
          AppBar(
            toolbarHeight: 0,
            elevation: 0,
            backgroundColor: PeopleColors.blue900,
          ),
      body: SafeArea(
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
