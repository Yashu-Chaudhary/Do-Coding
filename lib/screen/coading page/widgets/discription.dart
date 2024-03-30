
import 'package:flutter/material.dart';

class PDiscription extends StatelessWidget {
  const PDiscription({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey, fontSize: 18),
    );
  }
}