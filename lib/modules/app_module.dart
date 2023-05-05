import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:isar/isar.dart';
import 'package:people_maker/core/infra/infra.dart';
import 'package:people_maker/modules/app_routing.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        AsyncBind<Isar>(
          (i) => IsarDatabase().openDatabase(),
        ),
        Bind.singleton(
          (i) => Dio(),
        ),
        Bind.singleton<HttpClient>(
          (i) => HttpDioAdapter(
            dio: i.get(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => AppRouting.routes;
}
