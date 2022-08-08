import '../controller/sign_in1_controller.dart';
import 'package:get/get.dart';

class SignIn1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignIn1Controller());
  }
}
