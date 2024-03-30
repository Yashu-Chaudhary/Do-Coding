import 'package:coading_area/screen/home/home.dart';
import 'package:coading_area/util/constants/string_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: deviceHeight * 0.6,
            width: deviceWidth,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Text(
                  PTexts.learnCoading,
                  maxLines: 2,
                  style: TextStyle(fontSize: 55),
                ),
                const Text(
                  PTexts.disc,
                  maxLines: 5,
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Get.to(()=>const Home()),
                  child: Container(
                    height: 60,
                    width: deviceWidth*0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(10)),
                    child: const Text(PTexts.next, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 40),),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
