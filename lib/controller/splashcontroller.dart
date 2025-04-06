
import 'package:get/get.dart';
import 'package:quran3/core/constant/approutes.dart';

class Splashcontroller extends GetxController {
  gotOnpording() {
    Get.offNamed(Approutes.onpording);
  }

  @override
  void onInit() {
    Future.delayed(Duration(seconds: 4), () {
      gotOnpording();
    });
    super.onInit();
  }
}
