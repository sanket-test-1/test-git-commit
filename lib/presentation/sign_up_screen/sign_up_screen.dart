import 'controller/sign_up_controller.dart';
import 'package:application11/core/app_export.dart';
import 'package:application11/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration: AppDecoration.fillBlack900,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding: getPadding(
                                                left: 24, top: 23, right: 24),
                                            child: Container(
                                                height: getVerticalSize(13.00),
                                                width: getHorizontalSize(6.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgArrowleft,
                                                    fit: BoxFit.fill)))),
                                    Container(
                                        width: getHorizontalSize(260.00),
                                        margin: getMargin(
                                            left: 25, top: 30, right: 25),
                                        child: Text("msg_sign_up_and_sta".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold35
                                                .copyWith())),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(330.00),
                                            margin: getMargin(
                                                left: 24, top: 46, right: 20),
                                            padding: getPadding(
                                                left: 20, top: 19, bottom: 21),
                                            decoration: AppDecoration
                                                .txtFillWhiteA70063
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder10),
                                            child: Text("lbl_your_name".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoBlack14
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(330.00),
                                            margin: getMargin(
                                                left: 24, top: 20, right: 20),
                                            padding: getPadding(
                                                left: 20, top: 19, bottom: 21),
                                            decoration: AppDecoration
                                                .txtFillWhiteA70063
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder10),
                                            child: Text("lbl_your_name".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoBlack14
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(330.00),
                                            margin: getMargin(
                                                left: 24, top: 20, right: 20),
                                            padding: getPadding(
                                                left: 20, top: 19, bottom: 21),
                                            decoration: AppDecoration
                                                .txtFillWhiteA70063
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder10),
                                            child: Text("lbl_your_name".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoBlack14
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(330.00),
                                            margin: getMargin(
                                                left: 24, top: 20, right: 20),
                                            padding: getPadding(
                                                left: 20, top: 19, bottom: 21),
                                            decoration: AppDecoration
                                                .txtFillWhiteA70063
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder10),
                                            child: Text("lbl_your_name".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoBlack14
                                                    .copyWith()))),
                                    Container(
                                        width: getHorizontalSize(259.00),
                                        margin: getMargin(
                                            left: 31, top: 21, right: 31),
                                        child: Text("msg_by_signing_up_y".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular12
                                                .copyWith(height: 1.50))),
                                    CustomButton(
                                        width: 325,
                                        text: "lbl_sign_up_now".tr,
                                        margin: getMargin(
                                            left: 24, top: 94, right: 24),
                                        variant: ButtonVariant.FillAmber300,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 24,
                                                top: 43,
                                                right: 24,
                                                bottom: 22),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_already_registe2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .teal900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  TextSpan(
                                                      text: ' ',
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .amber300,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  TextSpan(
                                                      text: "lbl_sign_in".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .amber300,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700))
                                                ]),
                                                textAlign: TextAlign.left)))
                                  ])))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
