import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../_export_core.dart';

class RowTextButtonComponent extends StatelessWidget {
  final String firstText;
  final String secondText;
  final void Function() onTap;

  const RowTextButtonComponent({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .center,
    children: [
      Text(
        firstText,
        style: GoogleFonts.inter(
          fontSize: 14.0,
          fontWeight: .w600,
          color: ColorConstant.blackOnboarding,
        ),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          secondText,
          style: GoogleFonts.inter(
            color: ColorConstant.greenPrimary,
            fontWeight: .w600,
          ),
        ),
      ),
    ],
  );
}
