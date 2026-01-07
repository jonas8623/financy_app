import 'package:financy_app/app/features/core/_export_core.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      alignment: .center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: .topCenter,
          end: .bottomCenter,
          colors: ColorConstant.greenGradient,
        ),
      ),
      child: Text("Financy", style: Theme.of(context).textTheme.displayLarge),
    ),
  );
}
