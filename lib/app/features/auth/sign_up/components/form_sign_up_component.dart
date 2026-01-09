import 'package:financy_app/app/features/auth/_export_auth_module.dart';
import 'package:flutter/material.dart';

class FormSignUpComponent extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  const FormSignUpComponent({
    super.key,
    required this.formKey,
    required this.passwordController,
  });

  @override
  State<FormSignUpComponent> createState() => _FormSignUpComponentState();
}

class _FormSignUpComponentState extends State<FormSignUpComponent>
    with AuthValidationMixin {
  @override
  Widget build(BuildContext context) => Form(
    autovalidateMode: .onUserInteraction,
    key: widget.formKey,
    child: Column(
      children: [
        TextFormFieldComponent(
          controller: TextEditingController(),
          label: 'Your Name',
          textCapitalization: TextCapitalization.words,
          formatters: [UpperCaseTextInputFormatter()],
          validator: validateFieldIsEmpty,
        ),
        const SizedBox(height: 12.0),
        TextFormFieldComponent(
          controller: TextEditingController(),
          label: 'Your Email',
          textInputType: TextInputType.emailAddress,
          validator: (value) => validate([
            () => validateFieldIsEmpty(value),
            () => validateEmail(value),
          ]),
        ),
        const SizedBox(height: 12.0),
        TextFormFieldComponent(
          controller: widget.passwordController,
          label: 'Your Password',
          isPassword: true,
          validator: (value) => validate([
            () => validateFieldIsEmpty(value),
            () => validatePassword(value),
          ]),
          helperText:
              "Must have at least 8 characters, 1 capital letter and 1 number.",
        ),
        const SizedBox(height: 12.0),
        TextFormFieldComponent(
          controller: TextEditingController(),
          label: 'Confirmed Password',
          isPassword: true,
          validator: (value) => validate([
            () => validateFieldIsEmpty(value),
            () => validateConfirmPassword(
              controllerPassword: widget.passwordController.text,
              value: value,
            ),
          ]),
        ),
      ],
    ),
  );
}
