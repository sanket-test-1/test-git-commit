import '/core/app_export.dart';
import 'package:application11/presentation/login_screen_screen/models/login_screen_model.dart';
import 'package:flutter/material.dart';

class LoginScreenController extends GetxController {
  TextEditingController emailController2 = TextEditingController();

  TextEditingController passwordController2 = TextEditingController();

  Rx<LoginScreenModel> loginScreenModelObj = LoginScreenModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController2.dispose();
    passwordController2.dispose();
  }
}
