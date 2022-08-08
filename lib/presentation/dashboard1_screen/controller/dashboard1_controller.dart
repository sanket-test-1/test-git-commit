import '/core/app_export.dart';
import 'package:application11/presentation/dashboard1_screen/models/dashboard1_model.dart';

class Dashboard1Controller extends GetxController {
  Rx<Dashboard1Model> dashboard1ModelObj = Dashboard1Model().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
