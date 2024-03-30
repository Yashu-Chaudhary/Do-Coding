import 'package:coading_area/screen/coading%20page/coading_page.dart';
import 'package:coading_area/screen/home/widgets/topic_container.dart';
import 'package:coading_area/util/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData device = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: device.size.height,
          width: device.size.width,
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(PTexts.doCoading,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Icon(
                      Icons.more_horiz,
                      size: 30,
                      color: Colors.black,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: device.size.height * 0.82,
                  width: device.size.width,
                  child: ListView.builder(
                      itemCount: PTexts.map.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PTopicContainer(
                            title: PTexts.map[index]['title'] ?? "",
                            subTitle: PTexts.map[index]['subTitel'] ?? "",
                            onPressed: () => Get.to(
                              () => CoadingPage(
                                  dis: PTexts.map[index]['discription'],title:PTexts.map[index]['title'] ?? "" ,),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
