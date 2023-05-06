import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/presentation/saved/widgets/saved_empty_state.dart';
import 'package:people_maker/modules/people/presentation/saved/widgets/saved_users_list.dart';
import 'package:people_maker/ui/ui.dart';

import 'controller/controller.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({
    required this.controller,
    super.key,
  });

  final SavedController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Observer(
        builder: (context) {
          final users = controller.users;
          final isEmpty = users.isEmpty;
          return CustomScrollView(
            clipBehavior: Clip.none,
            physics: isEmpty ? const NeverScrollableScrollPhysics() : null,
            slivers: [
              SliverAppBar(
                collapsedHeight: 180,
                expandedHeight: 200,
                backgroundColor: Colors.transparent,
                flexibleSpace: PageTitleWidget(
                  title: R.string.peopleMaker,
                  subTitle: 'Veja seus mocks de usuário salvos',
                ),
              ),
              if (controller.isLoading) ...[
                const SliverToBoxAdapter(
                  child: LoadingWidget(),
                ),
              ] else ...[
                if (users.isNotEmpty)
                  buildSavedUserList(users, controller)
                else
                  const SliverToBoxAdapter(
                    child: SavedEmptyState(),
                  ),
              ]
            ],
          );
        },
      ),
    );
  }
}
