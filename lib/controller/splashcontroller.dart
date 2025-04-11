
import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:quran3/core/constant/approutes.dart';


class Splashcontroller extends GetxController {
   static AudioPlayer audioPlayer = AudioPlayer();
  gotOnpording() {
    Get.offNamed(Approutes.onpording);
  }

  @override
  void onInit() {
    audioPlayer.play(AssetSource('audio/mensh.m4a'));
    Future.delayed(Duration(seconds: 6), () {
      gotOnpording();
    });
    super.onInit();
  }
}
