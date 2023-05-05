import 'package:flutter_modular/flutter_modular.dart';

import '../app_module.dart';

class AsyncBindingGuard extends RouteGuard {
  AsyncBindingGuard() : super(redirectTo: '/main');

  @override
  Future<bool> canActivate(String path, ParallelRoute<dynamic> route) async {
    await Modular.isModuleReady<AppModule>();
    return Future.value(true);
  }
}
