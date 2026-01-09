import 'package:financy_app/app/features/auth/_export_auth_module.dart';
import 'package:financy_app/app/features/core/_export_core.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _formKey = .new();
    _passwordController = .new();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.headlineLarge!;
    return Scaffold(
      backgroundColor: ColorConstant.greenOnboarding,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: .symmetric(vertical: 20.0, horizontal: 16.0),
          child: Column(
            children: [
              Text("Start Saving", style: titleStyle),
              Text("Your Money!", style: titleStyle),
              const SizedBox(height: 20.0),
              ImageAssetComponent(name: AppConstant.signupImage),
              const SizedBox(height: 10.0),
              FormSignUpComponent(
                formKey: _formKey,
                passwordController: _passwordController,
              ),
              const SizedBox(height: 14.0),
              ButtonComponent(
                title: "Get Started",
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    debugPrint("SUCCESS...");
                  }
                },
              ),
              const SizedBox(height: 10),
              RowTextButtonComponent(
                firstText: "Already have account? ",
                secondText: "Log In",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
