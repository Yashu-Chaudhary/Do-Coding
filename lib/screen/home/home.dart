import 'package:coading_area/screen/coading%20page/coading_page.dart';
import 'package:coading_area/screen/home/widgets/topic_container.dart';
import 'package:coading_area/util/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> map = [{ 
      'title':'Java I-Else',
      'subTitel': 'Easy, Java(Basic), Max Score: 10, Success Rate: 91.32%'

    },
    { 
      'title':'Java I-Else',
      'subTitel': 'Easy, Java '

    }];
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: deviceheight,
          width: deviceWidth,
          decoration: BoxDecoration(color: Colors.black54.withOpacity(0.7)),
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
                            color: Colors.white)),
                    Icon(
                      Icons.more_horiz,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: deviceheight * 0.82,
                  width: deviceWidth,
                  child: ListView.builder(
                      itemCount: map.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PTopicContainer(
                              title: map[index]['title']??"",
                              subTitle: map[index]['subTitel']??"",
                              onPressed: () =>
                                  Get.to(() => const CoadingPage())),
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
