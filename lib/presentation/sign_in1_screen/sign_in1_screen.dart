import 'controller/sign_in1_controller.dart';
import 'package:application11/core/app_export.dart';
import 'package:application11/widgets/custom_button.dart';
import 'package:application11/widgets/custom_checkbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn1Screen extends GetWidget<SignIn1Controller> {
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
                                        width: getHorizontalSize(209.00),
                                        margin: getMargin(
                                            left: 25, top: 30, right: 25),
                                        child: Text("msg_glad_to_meet_y".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold35
                                                .copyWith())),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(325.00),
                                            margin: getMargin(
                                                left: 24, top: 48, right: 24),
                                            padding: getPadding(
                                                left: 15, top: 19, bottom: 21),
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
                                            width: getHorizontalSize(325.00),
                                            margin: getMargin(
                                                left: 24, top: 20, right: 24),
                                            padding: getPadding(
                                                left: 14, top: 19, bottom: 21),
                                            decoration: AppDecoration
                                                .txtFillWhiteA70063
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder10),
                                            child: Text("lbl_your_email".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtRobotoBlack14
                                                    .copyWith()))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 24, top: 20, right: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Obx(() => CustomCheckbox(
                                                      text:
                                                          "lbl_remember_me".tr,
                                                      iconSize: 15,
                                                      value: controller
                                                          .checkbox.value,
                                                      onChange: (value) {
                                                        controller.checkbox
                                                            .value = value;
                                                      })),
                                                  Text("lbl_forgot_password".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium11
                                                          .copyWith(
                                                              height: 2.00))
                                                ]))),
                                    CustomButton(
                                        width: 325,
                                        text: "lbl_sign_in_now".tr,
                                        margin: getMargin(
                                            left: 24, top: 58, right: 24),
                                        variant: ButtonVariant.FillAmber301,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 24, top: 10, right: 24),
                                            child: Text("lbl_or".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoBlack14Black9006c
                                                    .copyWith()))),
                                    CustomButton(
                                        width: 325,
                                        text: "lbl_sign_up_now".tr,
                                        margin: getMargin(
                                            left: 24, top: 12, right: 24),
                                        variant: ButtonVariant.FillWhiteA700,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(
                                                left: 24,
                                                top: 152,
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
