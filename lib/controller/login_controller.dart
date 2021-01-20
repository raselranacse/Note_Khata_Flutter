


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/home_screen.dart';

class LoginController extends GetxController{

  void doLogin(BuildContext context){
    Get.offAll(HomePage());
  }
}