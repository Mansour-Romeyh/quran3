import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/instance_manager.dart';
import 'package:quran3/controller/splashcontroller.dart';
import 'package:quran3/core/constant/appfonts.dart';
import 'package:quran3/core/constant/appimgs.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Splashcontroller());
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: height / 7),
          Image.asset(Appimgs.splashimgs, fit: BoxFit.fill),
          Transform.translate(
            offset: Offset(0, -70),
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TypewriterAnimatedText(
                  ' الـــوٌردُ الـــيَـوْمـيِ لِـحِـفـظِ الـقُـرآن الـكـريـم مِـنْ سـورة الكهف الي سورة القصص',
                  textStyle: Appfonts.fontlogo.copyWith(fontSize: width / 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
