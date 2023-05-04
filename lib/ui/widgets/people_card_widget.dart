import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:people_maker/ui/ui.dart';

class PeopleCardWidget extends StatelessWidget {
  const PeopleCardWidget({
    required this.name,
    required this.photo,
    required this.country,
    required this.nationality,
    required this.address,
    required this.email,
    required this.identity,
    super.key,
  });

  final String? name;
  final String? photo;
  final String? country;
  final String? nationality;
  final String? address;
  final String? email;
  final String? identity;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      elevation: 4,
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
            child: Row(
              children: [
                if (photo != null)
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(photo!),
                  ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (name != null)
                        Text(
                          name!,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      if (country != null)
                        Text(
                          country!,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 32,
                  height: 32,
                  child: nationality != null
                      ? Flag.fromString(
                          nationality!,
                          width: 32,
                          height: 32,
                        )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
          const Divider(
            color: PeopleColors.neutral900,
            height: 0.5,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (address != null)
                      _textIcon(
                        Icons.location_on_outlined,
                        address!,
                        context,
                      ),
                    if (email != null)
                      _textIcon(
                        Icons.email_outlined,
                        email!,
                        context,
                      ),
                    if (identity != null && (identity?.isNotEmpty ?? false))
                      _textIcon(
                        Icons.verified_user_outlined,
                        identity!,
                        context,
                      ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _textIcon(IconData icon, String text, BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 12),
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
