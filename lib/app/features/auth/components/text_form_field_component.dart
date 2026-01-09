import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldComponent extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final bool isPassword;
  final TextCapitalization? textCapitalization;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? formatters;
  final String? helperText;

  const TextFormFieldComponent({
    super.key,
    required this.controller,
    required this.label,
    this.isPassword = false,
    this.textCapitalization,
    this.textInputType,
    this.validator,
    this.formatters,
    this.helperText,
  });

  @override
  State<TextFormFieldComponent> createState() => _TextFormFieldComponentState();
}

class _TextFormFieldComponentState extends State<TextFormFieldComponent> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) => TextFormField(
    controller: widget.controller,
    keyboardType: widget.textInputType,
    obscureText: widget.isPassword ? _isObscure : false,
    textInputAction: TextInputAction.next,
    textCapitalization: widget.textCapitalization ?? TextCapitalization.none,
    decoration: InputDecoration(
      helperText: widget.helperText,
      helperMaxLines: 3,
      labelText: widget.label.toUpperCase(),
      suffixIcon: widget.isPassword
          ? IconButton(
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            )
          : null,
    ),
    validator: widget.validator,
    inputFormatters: widget.formatters,
  );
}
