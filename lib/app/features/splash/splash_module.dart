import 'package:financy_app/app/features/splash/pages/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends Module {
  @override
  void routes(RouteManager r) => r.child("/", child: (_) => const SplashPage());
}
