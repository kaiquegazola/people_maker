import 'package:dash_flags/dash_flags.dart';
import 'package:flutter/material.dart';
import 'package:people_maker/ui/colors/colors.dart';
import 'widgets.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    required this.enabled,
    required this.changeLanguage,
    required this.locale,
    super.key,
  });

  final bool enabled;
  final VoidCallback changeLanguage;
  final Locale locale;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1 : 0.6,
      child: Column(
        children: [
          IconButton(
            iconSize: 100,
            onPressed: enabled ? changeLanguage : null,
            icon: CountryFlag(
              height: 100,
              country: Country.fromCode(
                locale.countryCode ?? '',
              ),
            ),
          ),
          Text(
            locale.name,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: PeopleColors.neutral100,
                ),
          ),
        ],
      ),
    );
  }
}
