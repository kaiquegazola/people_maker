import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:people_maker/ui/colors/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Lottie.asset('assets/lottie/loading.json'),
        Align(
          child: Text(
            'Carregando',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: PeopleColors.neutral800,
              decorationStyle: TextDecorationStyle.dashed,
              shadows: <Shadow>[
                const Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 2,
                  color: PeopleColors.neutral050,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
