import 'dart:async';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:note_khata/view/on_board/onboarding_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';



class SplashController extends GetxController {
  @override
  void onInit() {
    SharedPreferences.getInstance().then((pr) {
      prefs = pr;
    });
    Timer(Duration(seconds: 3), () => Get.off(OnboardingScreen()));
    super.onInit();
  }
}
