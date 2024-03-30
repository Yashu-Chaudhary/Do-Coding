import 'package:flutter/material.dart';

class PTopicContainer extends StatelessWidget {
  const PTopicContainer({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String title;
  final String subTitle;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: onPressed,
        child: Container(
          width: deviceWidth,
          decoration: BoxDecoration(
              color: Colors.black54.withOpacity(0.7), borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$title :',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30)),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                    )
                  ],
                ),
                Text(
                  subTitle,
                  maxLines: 2,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
        ));
  }
}
