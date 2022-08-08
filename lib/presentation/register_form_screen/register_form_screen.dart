import 'controller/register_form_controller.dart';
import 'package:application11/core/app_export.dart';
import 'package:application11/core/utils/validation_functions.dart';
import 'package:application11/widgets/custom_button.dart';
import 'package:application11/widgets/custom_icon_button.dart';
import 'package:application11/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterFormScreen extends GetWidget<RegisterFormController> {
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
                      margin: getMargin(
                        left: 30,
                        top: 111,
                        right: 30,
                      ),
                      variant: IconButtonVariant.FillLightblueA200,
                      shape: IconButtonShape.RoundedBorder16,
                      padding: IconButtonPadding.PaddingAll20,
                      child: SvgPicture.asset(
                        ImageConstant.imgLogo,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 30,
                        top: 16,
                        right: 30,
                      ),
                      child: Text(
                        "msg_let_s_get_start".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsBold16.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 30,
                        top: 8,
                        right: 30,
                      ),
                      child: Text(
                        "msg_create_an_new_a".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtPoppinsRegular12.copyWith(
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      width: 343,
                      focusNode: FocusNode(),
                      controller: controller.fullNameController,
                      hintText: "lbl_full_name".tr,
                      margin: getMargin(
                        left: 30,
                        top: 28,
                        right: 30,
                      ),
                      prefix: Container(
                        margin: getMargin(
                          left: 18,
                          top: 14,
                          right: 12,
                          bottom: 14,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgUser,
                          fit: BoxFit.fill,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          20.00,
                        ),
                        minHeight: getSize(
                          20.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isText(value, isRequired: true))) {
                          return "Please enter valid text";
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: 343,
                      focusNode: FocusNode(),
                      controller: controller.emailController,
                      hintText: "lbl_your_email".tr,
                      margin: getMargin(
                        left: 30,
                        top: 8,
                        right: 30,
                      ),
                      prefix: Container(
                        margin: getMargin(
                          left: 18,
                          top: 16,
                          right: 12,
                          bottom: 16,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgMail,
                          fit: BoxFit.fill,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          15.50,
                        ),
                        minHeight: getSize(
                          15.50,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                    ),
                    CustomTextFormField(
                      width: 343,
                      focusNode: FocusNode(),
                      controller: controller.passwordController,
                      hintText: "lbl_password".tr,
                      margin: getMargin(
                        left: 30,
                        top: 8,
                        right: 30,
                      ),
                      prefix: Container(
                        margin: getMargin(
                          left: 18,
                          top: 14,
                          right: 12,
                          bottom: 14,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgLock,
                          fit: BoxFit.fill,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          20.00,
                        ),
                        minHeight: getSize(
                          20.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: true,
                    ),
                    CustomTextFormField(
                      width: 343,
                      focusNode: FocusNode(),
                      controller: controller.passwordAgainController,
                      hintText: "lbl_password_again".tr,
                      margin: getMargin(
                        left: 30,
                        top: 8,
                        right: 30,
                      ),
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: getMargin(
                          left: 18,
                          top: 14,
                          right: 12,
                          bottom: 14,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgLock,
                          fit: BoxFit.fill,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          20.00,
                        ),
                        minHeight: getSize(
                          20.00,
                        ),
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: true,
                    ),
                    CustomButton(
                      width: 343,
                      text: "lbl_sign_up".tr,
                      margin: getMargin(
                        left: 30,
                        top: 20,
                        right: 30,
                      ),
                      shape: ButtonShape.RoundedBorder5,
                      fontStyle: ButtonFontStyle.PoppinsBold14,
                    ),
                    Container(
                      margin: getMargin(
                        left: 30,
                        top: 20,
                        right: 30,
                        bottom: 20,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_have_an_account2".tr,
                              style: TextStyle(
                                color: ColorConstant.bluegray300,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.50,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: ColorConstant.indigoA200,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.50,
                              ),
                            ),
                            TextSpan(
                              text: "lbl_sign_in".tr,
                              style: TextStyle(
                                color: ColorConstant.lightBlueA200,
                                fontSize: getFontSize(
                                  12,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
