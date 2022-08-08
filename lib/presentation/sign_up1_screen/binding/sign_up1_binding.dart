import '../controller/sign_up1_controller.dart';
import 'package:get/get.dart';

class SignUp1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUp1Controller());
  }
}
