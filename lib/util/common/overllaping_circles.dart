import 'package:flutter/material.dart';

class OverlappingCircles extends StatelessWidget {
  const OverlappingCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // First circle
          Positioned(
            // Adjust position as needed
            top: 120, 
            left: 25, 
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.7),
              ),
            ),
          ),
          // Second circle
          Positioned(
            // Adjust position as needed
            top: 120, 
            left: 135, 
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.withOpacity(0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
