import 'package:flutter/material.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/ui/ui.dart';

class GenerateTitleWidget extends StatelessWidget {
  const GenerateTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            R.string.peopleMaker,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: PeopleColors.neutral050,
                ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              R.string.generateSubtitle,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: PeopleColors.neutral100,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
