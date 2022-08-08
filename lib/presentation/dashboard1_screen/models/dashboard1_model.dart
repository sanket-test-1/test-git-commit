import 'package:get/get.dart';
import 'slideroffer1_item_model.dart';
import 'flashsale1_item_model.dart';
import 'megasale1_item_model.dart';
import 'dashboard1_item_model.dart';

class Dashboard1Model {
  RxList<Slideroffer1ItemModel> slideroffer1ItemList =
      RxList.filled(1, Slideroffer1ItemModel());

  RxList<Flashsale1ItemModel> flashsale1ItemList =
      RxList.filled(3, Flashsale1ItemModel());

  RxList<Megasale1ItemModel> megasale1ItemList =
      RxList.filled(3, Megasale1ItemModel());

  RxList<Dashboard1ItemModel> dashboard1ItemList =
      RxList.filled(4, Dashboard1ItemModel());
}
