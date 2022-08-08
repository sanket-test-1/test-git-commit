import 'controller/login_controller.dart';
import 'package:application11/core/app_export.dart';
import 'package:application11/core/utils/validation_functions.dart';
import 'package:application11/widgets/custom_button.dart';
import 'package:application11/widgets/custom_icon_button.dart';
import 'package:application11/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:application11/domain/googleauth/google_auth_helper.dart';
import 'package:application11/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              CustomIconButton(
                                  height: 72,
                                  width: 72,
                                  margin:
                                      getMargin(left: 14, top: 68, right: 14),
                                  variant: IconButtonVariant.FillLightblueA200,
                                  shape: IconButtonShape.RoundedBorder16,
                                  padding: IconButtonPadding.PaddingAll20,
                                  child:
                                      SvgPicture.asset(ImageConstant.imgLogo)),
                              Padding(
                                  padding:
                                      getPadding(left: 14, top: 16, right: 14),
                                  child: Text("msg_welcome_to_e_co".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtPoppinsBold16
                                          .copyWith(letterSpacing: 0.50))),
                              Padding(
                                  padding:
                                      getPadding(left: 14, top: 8, right: 14),
                                  child: Text("msg_sign_in_to_cont".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtPoppinsRegular12
                                          .copyWith(letterSpacing: 0.50))),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.emailController1,
                                  hintText: "lbl_your_email".tr,
                                  margin:
                                      getMargin(left: 14, top: 28, right: 12),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 18,
                                          top: 16,
                                          right: 12,
                                          bottom: 16),
                                      child: SvgPicture.asset(
                                          ImageConstant.imgMail,
                                          fit: BoxFit.fill)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(15.50),
                                      minHeight: getSize(15.50)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 343,
                                  focusNode: FocusNode(),
                                  controller: controller.passwordController1,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 14, top: 8, right: 12),
                                  textInputAction: TextInputAction.done,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 18,
                                          top: 14,
                                          right: 12,
                                          bottom: 14),
                                      child: SvgPicture.asset(
                                          ImageConstant.imgLock,
                                          fit: BoxFit.fill)),
                                  prefixConstraints: BoxConstraints(
                                      minWidth: getSize(20.00),
                                      minHeight: getSize(20.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              CustomButton(
                                  width: 343,
                                  text: "lbl_sign_in".tr,
                                  margin:
                                      getMargin(left: 14, top: 18, right: 14),
                                  shape: ButtonShape.RoundedBorder5,
                                  fontStyle: ButtonFontStyle.PoppinsBold14,
                                  onTap: onTapBtnSignin),
                              Padding(
                                  padding:
                                      getPadding(left: 14, top: 19, right: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(134.00),
                                            margin:
                                                getMargin(top: 10, bottom: 10),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50)),
                                        Text("lbl_or2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold14
                                                .copyWith(letterSpacing: 0.07)),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(137.00),
                                            margin:
                                                getMargin(top: 10, bottom: 10),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.blue50))
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapLoginWithGoog();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 14, top: 16, right: 12),
                                      decoration: AppDecoration.outlineBlue50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 11,
                                                    top: 20,
                                                    bottom: 21),
                                                child: Container(
                                                    height: getSize(16.00),
                                                    width: getSize(16.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant
                                                            .imgRefresh,
                                                        fit: BoxFit.fill))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 70,
                                                    top: 16,
                                                    right: 98,
                                                    bottom: 16),
                                                child: Text(
                                                    "msg_login_with_goog".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtPoppinsBold14
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50)))
                                          ]))),
                              GestureDetector(
                                  onTap: () {
                                    onTapLoginWithFace();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 14, top: 8, right: 12),
                                      decoration: AppDecoration.outlineBlue50
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 14,
                                                    top: 18,
                                                    bottom: 19),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(20.00),
                                                    width: getHorizontalSize(
                                                        11.00),
                                                    child: SvgPicture.asset(
                                                        ImageConstant.imgPlus,
                                                        fit: BoxFit.fill))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 63,
                                                    top: 16,
                                                    right: 88,
                                                    bottom: 16),
                                                child: Text(
                                                    "msg_login_with_face".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtPoppinsBold14
                                                        .copyWith(
                                                            letterSpacing:
                                                                0.50)))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 14, top: 16, right: 14),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle
                                          .txtPoppinsBold12LightblueA200
                                          .copyWith(letterSpacing: 0.50))),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveana();
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 14,
                                          top: 8,
                                          right: 14,
                                          bottom: 20),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "msg_don_t_have_an_a2".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray300,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    letterSpacing: 0.50)),
                                            TextSpan(
                                                text: ' ',
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .indigoA200,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 0.50)),
                                            TextSpan(
                                                text: "lbl_register".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .lightBlueA200,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                    letterSpacing: 0.50))
                                          ]),
                                          textAlign: TextAlign.center)))
                            ])))))));
  }

  onTapBtnSignin() {
    Get.toNamed(AppRoutes.dashboardScreen);
  }

  onTapLoginWithGoog() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapLoginWithFace() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.registerForm1Screen);
  }
}
