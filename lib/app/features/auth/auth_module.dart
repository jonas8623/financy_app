import 'package:financy_app/app/features/auth/_export_auth_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void routes(RouteManager r) {
    r
      ..module("/", module: SignUpModule())
      ..module("sign_in", module: SignInModule());
  }
}
