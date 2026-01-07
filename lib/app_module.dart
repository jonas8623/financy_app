import 'package:financy_app/app/features/auth/auth_module.dart';
import 'package:financy_app/app/features/onboarding/onboarding_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r
      // ..module("/", module: SplashModule())
      ..module("/", module: OnboardingModule())
      ..module("/auth/", module: AuthModule());
  }
}
