import '/core/app_export.dart';
import 'package:application11/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailController1 = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController1.dispose();
    passwordController1.dispose();
  }
}
