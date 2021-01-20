import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_khata/components/bezier_container.dart';
import 'package:note_khata/components/gradiant_button.dart';
import 'package:note_khata/components/text_field.dart';
import 'package:note_khata/controller/login_controller.dart';
import 'package:note_khata/style/style.dart';

class LoginScreen extends StatelessWidget {
  var loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    Image.asset(
                      'assets/images/logo.png',
                      height: 70,
                    ),
                    SizedBox(height: 30),
                    CustomTextField(
                      title: "code".tr,
                      isPassword: false,
                    //  controller: loginController.emailController,
                    ),

                    SizedBox(height: 20),
                    GradientButton(
                      onPressed: () {
                        loginController.doLogin(context);
                      },
                      child: Text(
                        'login'.tr,
                        style: TextStyle(color: Colors.white),
                      ),
                      gradient: buttonGradient,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        onTap: () {
                        //  loginController.goToForgetPage();
                        },
                        child: Text(
                          'forgot_pass_'.tr,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    _createAccountLabel(),
                  ],
                ),
              ),
            ),
          //  Positioned(top: 40, left: 0, child: appBar('login'.tr)),
          ],
        ),
      ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
       // loginController.goToSignUp();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "do_not_account".tr,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'register'.tr,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}