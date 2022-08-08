import '../offer1_screen/widgets/offer_screen1_item_widget.dart';
import 'controller/offer1_controller.dart';
import 'models/offer_screen1_item_model.dart';
import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Offer1Screen extends GetWidget<Offer1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin:
                            getMargin(left: 16, top: 26, right: 12, bottom: 17),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: size.width,
                                  margin: getMargin(left: 8, right: 6),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapImgArrowleft();
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 6, bottom: 30),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  12.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  5.00),
                                                          child: SvgPicture.asset(
                                                              ImageConstant
                                                                  .imgArrowleftBluegray300,
                                                              fit: BoxFit
                                                                  .fill)))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(140.00),
                                                  margin: getMargin(left: 20),
                                                  child: Text(
                                                      "msg_super_flash_sal2".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.50)))
                                            ]),
                                        Padding(
                                            padding:
                                                getPadding(top: 3, bottom: 27),
                                            child: Container(
                                                height: getVerticalSize(18.00),
                                                width: getHorizontalSize(17.00),
                                                child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgSearchBluegray300,
                                                    fit: BoxFit.fill)))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: double.infinity,
                                      margin: getMargin(top: 20),
                                      decoration: AppDecoration.fillWhiteA700,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(206.00),
                                                width:
                                                    getHorizontalSize(343.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5.00)),
                                                              child: Image.asset(
                                                                  ImageConstant
                                                                      .imgPromotionimage,
                                                                  height:
                                                                      getVerticalSize(
                                                                          206.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          343.00),
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 24,
                                                                  top: 32,
                                                                  right: 24,
                                                                  bottom: 32),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            209.00),
                                                                        child: Text(
                                                                            "msg_super_flash_sal"
                                                                                .tr,
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtPoppinsBold24.copyWith(letterSpacing: 0.50))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                29,
                                                                            right:
                                                                                10),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                              Container(padding: getPadding(left: 9, top: 8, right: 11, bottom: 9), decoration: AppDecoration.txtFillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_08".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtPoppinsBold16.copyWith(letterSpacing: 0.50))),
                                                                              Padding(padding: getPadding(left: 4, top: 10, bottom: 10), child: Text("lbl".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtPoppinsBold14WhiteA700.copyWith(letterSpacing: 0.07))),
                                                                              Container(margin: getMargin(left: 4), padding: getPadding(left: 9, top: 8, right: 11, bottom: 9), decoration: AppDecoration.txtFillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_34".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtPoppinsBold16.copyWith(letterSpacing: 0.50))),
                                                                              Padding(padding: getPadding(left: 4, top: 10, bottom: 10), child: Text("lbl".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtPoppinsBold14WhiteA700.copyWith(letterSpacing: 0.07))),
                                                                              Container(margin: getMargin(left: 4), padding: getPadding(left: 11, top: 8, right: 10, bottom: 9), decoration: AppDecoration.txtFillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder5), child: Text("lbl_52".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtPoppinsBold16.copyWith(letterSpacing: 0.50)))
                                                                            ]))
                                                                  ])))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 16),
                                                child: Obx(() =>
                                                    GridView.builder(
                                                        shrinkWrap: true,
                                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                            mainAxisExtent:
                                                                getVerticalSize(
                                                                    283.00),
                                                            crossAxisCount: 2,
                                                            mainAxisSpacing:
                                                                getHorizontalSize(
                                                                    13.00),
                                                            crossAxisSpacing:
                                                                getHorizontalSize(
                                                                    13.00)),
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        itemCount: controller
                                                            .offer1ModelObj
                                                            .value
                                                            .offerScreen1ItemList
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          OfferScreen1ItemModel
                                                              model = controller
                                                                  .offer1ModelObj
                                                                  .value
                                                                  .offerScreen1ItemList[index];
                                                          return OfferScreen1ItemWidget(
                                                              model);
                                                        })))
                                          ])))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
