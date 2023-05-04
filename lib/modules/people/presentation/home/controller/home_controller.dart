import 'package:mobx/mobx.dart';
import 'package:people_maker/core/infra/http/http.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  HomeControllerBase({
    required this.httpClient,
  }) {
    loadUser();
  }

  final HttpClient httpClient;

  Future<void> loadUser() async {}
}
