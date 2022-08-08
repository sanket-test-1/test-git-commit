import '/core/app_export.dart';
import 'package:application11/presentation/register_form1_screen/models/register_form1_model.dart';
import 'package:flutter/material.dart';

class RegisterForm1Controller extends GetxController {
  TextEditingController fullNameController1 = TextEditingController();

  TextEditingController emailController3 = TextEditingController();

  TextEditingController passwordController3 = TextEditingController();

  TextEditingController passwordAgainController1 = TextEditingController();

  Rx<RegisterForm1Model> registerForm1ModelObj = RegisterForm1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullNameController1.dispose();
    emailController3.dispose();
    passwordController3.dispose();
    passwordAgainController1.dispose();
  }
}
