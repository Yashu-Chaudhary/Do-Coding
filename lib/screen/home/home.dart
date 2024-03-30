import 'package:coading_area/screen/coading%20page/coading_page.dart';
import 'package:coading_area/screen/home/widgets/topic_container.dart';
import 'package:coading_area/util/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              PTopicContainer(
                title: PTexts.p1,
                subTitle: PTexts.arrayForBeginners,
                onPressed: () => Get.to(
                  () => const CoadingPage(),
                ),
              ),
              const SizedBox(height: 12),
              PTopicContainer(
                title: PTexts.p2,
                subTitle: PTexts.arrayForIntermediates,
                onPressed: () => Get.to(
                  () => const CoadingPage(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
