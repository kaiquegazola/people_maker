import 'package:flutter/material.dart';
import 'package:people_maker/ui/ui.dart';

class PeopleScaffold extends StatelessWidget {
  const PeopleScaffold({
    required this.body,
    super.key,
    this.bottomNavigationBar,
  });

  final Widget body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
