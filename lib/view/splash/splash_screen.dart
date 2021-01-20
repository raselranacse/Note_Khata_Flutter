import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_khata/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {

  var splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/loading.gif",height: 200,),
      ),
    );
  }
}
