import '../controller/dashboard1_controller.dart';
import '../models/flashsale1_item_model.dart';
import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Flashsale1ItemWidget extends StatelessWidget {
  Flashsale1ItemWidget(this.flashsale1ItemModelObj);

  Flashsale1ItemModel flashsale1ItemModelObj;

  var controller = Get.find<Dashboard1Controller>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          decoration: AppDecoration.outlineBlue5012.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 16,
                    top: 16,
                    right: 16,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        5.00,
                      ),
                    ),
                    child: Image.asset(
                      ImageConstant.imgProductimage,
                      height: getSize(
                        109.00,
                      ),
                      width: getSize(
                        109.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(
                    109.00,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 8,
                    right: 16,
                  ),
                  child: Text(
                    "msg_fs_nike_air_m".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold12Indigo900.copyWith(
                      letterSpacing: 0.50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 8,
                  right: 16,
                ),
                child: Text(
                  "lbl_299_43".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPoppinsBold12LightblueA200.copyWith(
                    letterSpacing: 0.50,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 8,
                  right: 16,
                  bottom: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "lbl_534_33".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular10.copyWith(
                        letterSpacing: 0.50,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                        "lbl_24_off".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold10.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
