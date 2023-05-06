import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:people_maker/core/core.dart';
import 'package:people_maker/modules/people/domain/domain.dart';
import 'package:people_maker/modules/people/presentation/detail/controller/detail_controller.dart';
import 'package:people_maker/modules/people/presentation/detail/widgets/data_copy_widget.dart';
import 'package:people_maker/ui/ui.dart';

class DetailPage extends StatelessWidget {
  DetailPage({
    required UserEntity? user,
    required this.controller,
    required this.languageController,
    super.key,
  }) {
    controller.user = user;
  }

  final DetailController controller;
  final LanguageController languageController;

  @override
  Widget build(BuildContext context) {
    return PeopleScaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        padding: const EdgeInsets.all(16),
        child: Observer(
          builder: (context) {
            final user = controller.user;
            if (user != null) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Modular.to.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: Image.network(
                      user.picture.image,
                    ),
                  ),
                  DataCopyWidget(
                    name: R.string.photo,
                    value: user.picture.image,
                  ),
                  DataCopyWidget(
                    name: R.string.name,
                    value: controller.userName,
                  ),
                  DataCopyWidget(
                    name: R.string.address,
                    value: controller.userAddress,
                  ),
                  DataCopyWidget(
                    name: R.string.country,
                    value: user.location.country,
                  ),
                  DataCopyWidget(
                    name: R.string.email,
                    value: user.email,
                  ),
                  DataCopyWidget(
                    name: R.string.userName,
                    value: user.login.username,
                  ),
                  DataCopyWidget(
                    name: R.string.password,
                    value: user.login.password,
                  ),
                  DataCopyWidget(
                    name: R.string.dateOfBirth,
                    value: DateFormat(
                      null,
                      languageController.currentLocale.languageCode,
                    ).format(DateTime.now()),
                  ),
                  DataCopyWidget(
                    name: R.string.phone,
                    value: user.phone,
                  ),
                  DataCopyWidget(
                    name: R.string.cellPhone,
                    value: user.cell,
                  ),
                  DataCopyWidget(
                    name: R.string.identification,
                    value: controller.userIdentification,
                  ),
                  DataCopyWidget(
                    name: R.string.nationality,
                    value: user.nat,
                  ),
                ],
              );
            }
            return const LoadingWidget();
          },
        ),
      ),
    );
  }
}
