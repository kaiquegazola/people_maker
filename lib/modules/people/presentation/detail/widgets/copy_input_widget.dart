import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/ui/colors/colors.dart';

class CopyInputWidget extends StatefulWidget {
  const CopyInputWidget({
    required this.value,
    super.key,
  });

  final String value;

  @override
  State<CopyInputWidget> createState() => _CopyInputWidgetState();
}

class _CopyInputWidgetState extends State<CopyInputWidget> {
  bool copied = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            initialValue: widget.value,
            readOnly: true,
          ),
        ),
        IconButton(
          onPressed: copyData,
          icon: Icon(
            copied ? Icons.paste : Icons.copy,
            color: PeopleColors.blue400,
          ),
        ),
      ],
    );
  }

  void copyData() {
    try {
      setState(() {
        Clipboard.setData(ClipboardData(text: widget.value));
        notifyCopy();
        copied = true;
      });
    } catch (_) {}
    shouldResetCopyState();
  }

  void notifyCopy() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(R.string.copiedToClipboard),
        backgroundColor: PeopleColors.blue600,
      ),
    );
  }

  void shouldResetCopyState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() => copied = false);
      }
    });
  }
}
