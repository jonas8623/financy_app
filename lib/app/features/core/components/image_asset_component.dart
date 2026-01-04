import 'package:flutter/material.dart';

class ImageAssetComponent extends StatelessWidget {
  final String name;
  const ImageAssetComponent({required this.name, super.key});

  @override
  Widget build(BuildContext context) => Image.asset(name);
}
