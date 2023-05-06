import 'package:flutter/material.dart';
import 'package:people_maker/ui/ui.dart';

class SavedEmptyState extends StatelessWidget {
  const SavedEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Images.noData.image(height: 100),
        const SizedBox(height: 12),
        Text(
          'Você ainda não salvou nenhum usuário gerado',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: PeopleColors.neutral050,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
