import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppConstant {
  //......  share preference key
  static final String token_S = "TOKEN";
  static final String status_key = "status";
  static final String message_key = "message";
  static final String error_key = "Error";
  static final String success_key = "Success";
  static final String token_key = "token";
}

void loadingIndicator() {
  Get.dialog(
    Container(
      height: 100,
      width: 100,
      child: Image.asset(
        "assets/images/loading.gif",
        height: 125.0,
        width: 125.0,
      ),
    ),
  );
}

void errorSnackbar(
  String msg,
) {
  return Get.snackbar('error'.tr, "$msg",
      snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red[400], colorText: Colors.white);
}

void successSnackbar(String msg) {
  return Get.snackbar('success'.tr, "$msg",
      snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green[400], colorText: Colors.white);
}
