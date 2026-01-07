import 'package:financy_app/app/features/auth/_export_auth_module.dart';
import 'package:flutter/material.dart';

class FormSignUpComponent extends StatefulWidget {
  const FormSignUpComponent({super.key});

  @override
  State<FormSignUpComponent> createState() => _FormSignUpComponentState();
}

class _FormSignUpComponentState extends State<FormSignUpComponent> {
  @override
  Widget build(BuildContext context) => Form(
    child: Column(
      children: [
        TextFormFieldComponent(
          controller: TextEditingController(),
          label: 'Your Name',
          textCapitalization: TextCapitalization.words,
          formatters: [UpperCaseTextInputFormatter()],
        ),
        const SizedBox(height: 12.0),
        TextFormFieldComponent(
          controller: TextEditingController(),
          label: 'Your Email',
          textInputType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 12.0),
        TextFormFieldComponent(
          controller: TextEditingController(),
          label: 'Your Password',
          isPassword: true,
        ),
        const SizedBox(height: 12.0),
        TextFormFieldComponent(
          controller: TextEditingController(),
          label: 'Confirmed Password',
          isPassword: true,
        ),
      ],
    ),
  );
}
