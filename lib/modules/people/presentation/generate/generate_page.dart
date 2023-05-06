import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/presentation/generate/generate.dart';
import 'package:people_maker/ui/ui.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage({
    required this.controller,
    super.key,
  });

  final GenerateController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitleWidget(
            title: R.string.peopleMaker,
            subTitle: R.string.generateSubtitle,
          ),
          Observer(
            builder: (_) {
              if (controller.isLoading) {
                return const LoadingWidget();
              }
              return GestureDetector(
                onTap: () => Modular.to.pushNamed(
                  '/people/detail',
                  arguments: controller.user,
                ),
                child: PeopleCardWidget(
                  name: controller.userName,
                  photo: controller.user?.picture.image,
                  country: controller.user?.location.country,
                  nationality: controller.user?.nat,
                  address: controller.userAddress,
                  email: controller.user?.email,
                  identity: controller.userIdentification,
                  isSaved: controller.isSaved,
                  onUpdate: controller.save,
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: controller.generate,
              icon: const Icon(Icons.add, size: 18),
              label: Text(R.string.newUser),
            ),
          ),
        ],
      ),
    );
  }
}
