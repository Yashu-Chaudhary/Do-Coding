import 'package:flutter/material.dart';

class PointList extends StatelessWidget {
  final List<String> points;

  const PointList({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: points.length,
        itemBuilder: (context, index) {
          return ListTile(
            
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Container(
                height: 4,
                width: 4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
              ),
            ),
            title: Text(points[index]),
          );
        },
      ),
    );
  }
}
