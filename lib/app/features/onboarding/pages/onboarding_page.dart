import 'package:financy_app/app/features/core/_export_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  static final _titleStyle = GoogleFonts.inter(
    fontSize: 36.0,
    fontWeight: FontWeight.bold,
    color: ColorConstant.greenPrimary,
  );

  @override
  Widget build(BuildContext context) => Scaffold(
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
        Text("Spend Smarter", style: _titleStyle),
        Text("Save More", style: _titleStyle),
        const SizedBox(height: 10.0),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 122.0,
              vertical: 14.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38.0),
              gradient: LinearGradient(
                colors: ColorConstant.greenGradient,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Text(
              "Get Started",
              style: GoogleFonts.inter(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have account? ",
              style: GoogleFonts.inter(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: ColorConstant.blackOnboarding,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "Log In",
                style: GoogleFonts.inter(
                  color: ColorConstant.greenPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
      ],
    ),
  );
}
