import 'package:flutter/material.dart';

class PBlackContainer extends StatelessWidget {
  const PBlackContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    MediaQueryData device = MediaQuery.of(context);
    return Container(
      height: 40,
      width: device.size.width,
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.6)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(text),
      ),
    );
  }
}