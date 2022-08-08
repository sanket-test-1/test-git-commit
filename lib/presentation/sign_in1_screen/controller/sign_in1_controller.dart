import '/core/app_export.dart';
import 'package:application11/presentation/sign_in1_screen/models/sign_in1_model.dart';

class SignIn1Controller extends GetxController {
  Rx<SignIn1Model> signIn1ModelObj = SignIn1Model().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
