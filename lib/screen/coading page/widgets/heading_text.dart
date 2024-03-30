import 'package:flutter/material.dart';

class PHeadingText extends StatelessWidget {
  const PHeadingText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}
