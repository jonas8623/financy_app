import 'package:flutter/material.dart';
import '../_export_core.dart';

class ButtonComponent extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const ButtonComponent({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) => ConstrainedBox(
    constraints: const BoxConstraints(maxWidth: 360),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(38.0),
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(38.0),
            gradient: LinearGradient(
              colors: ColorConstant.greenGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(title, style: Theme.of(context).textTheme.labelLarge),
        ),
      ),
    ),
  );
}
