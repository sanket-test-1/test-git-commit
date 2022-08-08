import '../controller/register_form1_controller.dart';
import 'package:get/get.dart';

class RegisterForm1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterForm1Controller());
  }
}
