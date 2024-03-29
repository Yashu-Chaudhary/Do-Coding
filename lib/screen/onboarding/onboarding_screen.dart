import 'package:coading_area/screen/onboarding/widgets/custom_painer';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight=MediaQuery.of(context).size.height;
    final deviceWidth=MediaQuery.of(context).size.width;

    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: deviceHeight*0.5,
            width: deviceWidth,
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(child: Container(
              child: Image.asset(),
            ),),
          ),
           
          Container(
            width: deviceWidth,
            height: deviceHeight*0.5,
          )

        ],
      ),
    );
  }
}
