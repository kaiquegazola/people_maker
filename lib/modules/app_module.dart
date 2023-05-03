import 'package:flutter_modular/flutter_modular.dart';
import 'package:people_maker/modules/app_routing.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => AppRouting.routes;
}
