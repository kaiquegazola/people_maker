import 'package:flutter/material.dart';
import 'package:people_maker/core/core.dart';

class SaveButtonWidget extends StatelessWidget {
  const SaveButtonWidget({
    required this.isSaved,
    required this.onSave,
    super.key,
  });

  final bool isSaved;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onSave,
      icon: Icon(isSaved ? Icons.star : Icons.star_border_outlined),
      label: Text(isSaved ? R.string.saved : R.string.save),
    );
  }
}
