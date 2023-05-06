import 'package:flutter/material.dart';
import 'package:people_maker/modules/people/domain/domain.dart';
import 'package:people_maker/modules/people/presentation/presentation.dart';
import 'package:people_maker/ui/ui.dart';

SliverList buildSavedUserList(
  List<UserEntity> users,
  SavedController controller,
) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (_, int index) {
        final user = users[index];
        return Padding(
          padding: EdgeInsets.only(
            bottom: index < users.length ? 12 : 0,
          ),
          child: PeopleCardWidget(
            name: controller.userName(user.name),
            photo: user.picture.image,
            country: user.location.country,
            nationality: user.nat,
            address: controller.userAddress(user.location),
            email: user.email,
            identity: controller.userIdentification(
              user.identification,
            ),
            isSaved: true,
            onUpdate: () => controller.remove(user),
          ),
        );
      },
      childCount: controller.users.length,
    ),
  );
}
