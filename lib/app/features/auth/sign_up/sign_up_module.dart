import 'package:financy_app/app/features/auth/sign_up/pages/sign_up_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child("/", child: (_) => const SignUpPage());
  }
}
