import '../controller/dashboard1_controller.dart';
import '../models/slideroffer1_item_model.dart';
import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Slideroffer1ItemWidget extends StatelessWidget {
  Slideroffer1ItemWidget(this.slideroffer1ItemModelObj);

  Slideroffer1ItemModel slideroffer1ItemModelObj;

  var controller = Get.find<Dashboard1Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          206.00,
        ),
        width: getHorizontalSize(
          343.00,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    5.00,
                  ),
                ),
                child: Image.asset(
                  ImageConstant.imgPromotionimage,
                  height: getVerticalSize(
                    206.00,
                  ),
                  width: getHorizontalSize(
                    343.00,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: getMargin(
                  left: 24,
                  top: 32,
                  right: 24,
                  bottom: 32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        209.00,
                      ),
                      child: Text(
                        "msg_super_flash_sal".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsBold24.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 29,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            padding: getPadding(
                              left: 9,
                              top: 8,
                              right: 11,
                              bottom: 9,
                            ),
                            decoration: AppDecoration.txtFillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                            ),
                            child: Text(
                              "lbl_08".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              "lbl".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtPoppinsBold14WhiteA700.copyWith(
                                letterSpacing: 0.07,
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 4,
                            ),
                            padding: getPadding(
                              left: 9,
                              top: 8,
                              right: 11,
                              bottom: 9,
                            ),
                            decoration: AppDecoration.txtFillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                            ),
                            child: Text(
                              "lbl_34".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold16.copyWith(
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 4,
                              top: 10,
                              bottom: 10,
                            ),
                            child: Text(
                              "lbl".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtPoppinsBold14WhiteA700.copyWith(
                                letterSpacing: 0.07,
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 4,
                            ),
                            padding: getPadding(
                              left: 11,
                              top: 8,
                              right: 10,
                              bottom: 9,
                            ),
                            decoration: AppDecoration.txtFillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                            ),
                            child: Text(
                              "lbl_52".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsBold16.copyWith(
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
          ],
        ),
      ),
    );
  }
}
