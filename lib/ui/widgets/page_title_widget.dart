import 'package:flutter/material.dart';
import 'package:people_maker/ui/ui.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({
    required this.title,
    required this.subTitle,
    super.key,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: PeopleColors.neutral050,
                ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              subTitle,
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
