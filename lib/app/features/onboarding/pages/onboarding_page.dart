import 'package:financy_app/app/features/core/_export_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.headlineLarge!;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: ColorConstant.greenOnboarding,
              child: ImageAssetComponent(name: AppConstant.onboardingImage),
            ),
          ),
          const SizedBox(height: 40),
          Text("Spend Smarter", style: titleStyle),
          Text("Save More", style: titleStyle),
          const SizedBox(height: 10.0),
          ButtonComponent(
            title: "Get Started",
            onTap: () => Modular.to.navigate("/auth/"),
          ),
          const SizedBox(height: 10),
          RowTextButtonComponent(
            firstText: "Already have account? ",
            secondText: "Log In",
            onTap: () {},
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
