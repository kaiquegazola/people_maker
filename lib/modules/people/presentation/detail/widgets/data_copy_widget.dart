import 'package:flutter/material.dart';
import 'package:people_maker/modules/people/presentation/detail/widgets/copy_input_widget.dart';

class DataCopyWidget extends StatelessWidget {
  const DataCopyWidget({
    required this.name,
    required this.value,
    super.key,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        CopyInputWidget(value: value),
        const SizedBox(height: 32),
      ],
    );
  }
}
