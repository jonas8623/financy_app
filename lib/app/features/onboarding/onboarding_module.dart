import 'package:financy_app/app/features/onboarding/pages/onboarding_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingModule extends Module {
  @override
  void routes(RouteManager r) => r.child("/", child: (_) => OnboardingPage());
}
