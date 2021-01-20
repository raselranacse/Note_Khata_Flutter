import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetworkUtils {
  static Future<bool> checkInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  static void noInternetSnackbar() {
    return Get.snackbar("no_internet".tr, "check_internet".tr,
        snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red[200], colorText: Colors.white);
  }

  // callHomeApi() {
  //   NetworkUtils.checkInternet().then(
  //         (intenet) {
  //       if (intenet != null && intenet) {
  //         // do something
  //       } else {
  //         NetworkUtils.noInternetSnackbar();
  //       }
  //     },
  //   );
  // }


}
