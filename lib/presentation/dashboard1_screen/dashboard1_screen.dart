import '../dashboard1_screen/widgets/dashboard1_item_widget.dart';
import '../dashboard1_screen/widgets/flashsale1_item_widget.dart';
import '../dashboard1_screen/widgets/megasale1_item_widget.dart';
import '../dashboard1_screen/widgets/slideroffer1_item_widget.dart';
import 'controller/dashboard1_controller.dart';
import 'models/dashboard1_item_model.dart';
import 'models/flashsale1_item_model.dart';
import 'models/megasale1_item_model.dart';
import 'models/slideroffer1_item_model.dart';
import 'package:application11/core/app_export.dart';
import 'package:application11/widgets/custom_icon_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard1Screen extends GetWidget<Dashboard1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(children: [
              Expanded(
                  child: Container(
                      margin: getMargin(top: 27, bottom: 7),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    width: size.width,
                                    margin: getMargin(left: 17, right: 17),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 4, bottom: 3),
                                                        child: Container(
                                                            height:
                                                                getSize(14.00),
                                                            width:
                                                                getSize(14.00),
                                                            child: SvgPicture.asset(
                                                                ImageConstant
                                                                    .imgSearch,
                                                                fit: BoxFit
                                                                    .fill))),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 9),
                                                        child: Text(
                                                            "lbl_search_product"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsRegular12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.50)))
                                                  ])),
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 3, bottom: 1),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            16.00),
                                                        width:
                                                            getHorizontalSize(
                                                                17.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgVector,
                                                            fit: BoxFit.fill))),
                                                Container(
                                                    height:
                                                        getVerticalSize(22.00),
                                                    width: getHorizontalSize(
                                                        18.00),
                                                    margin: getMargin(left: 21),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              10,
                                                                          right:
                                                                              10),
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          20.00),
                                                                      width: getHorizontalSize(
                                                                          17.00),
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgNotification,
                                                                          fit: BoxFit
                                                                              .fill)))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          8.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          7.00),
                                                                  margin: getMargin(
                                                                      left: 10,
                                                                      bottom:
                                                                          10),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .pink300,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(4.00)))))
                                                        ]))
                                              ])
                                        ]))),
                            Expanded(
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: SingleChildScrollView(
                                        padding: getPadding(left: 10, top: 44),
                                        child: Container(
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 12),
                                                  child: Obx(() =>
                                                      CarouselSlider.builder(
                                                          options:
                                                              CarouselOptions(
                                                                  height:
                                                                      getVerticalSize(
                                                                          206.00),
                                                                  initialPage:
                                                                      0,
                                                                  autoPlay:
                                                                      true,
                                                                  viewportFraction:
                                                                      1.0,
                                                                  enableInfiniteScroll:
                                                                      false,
                                                                  scrollDirection: Axis
                                                                      .horizontal,
                                                                  onPageChanged:
                                                                      (index,
                                                                          reason) {
                                                                    controller
                                                                        .silderIndex
                                                                        .value = index;
                                                                  }),
                                                          itemCount: controller
                                                              .dashboard1ModelObj
                                                              .value
                                                              .slideroffer1ItemList
                                                              .length,
                                                          itemBuilder: (context,
                                                              index,
                                                              realIndex) {
                                                            Slideroffer1ItemModel
                                                                model =
                                                                controller
                                                                    .dashboard1ModelObj
                                                                    .value
                                                                    .slideroffer1ItemList[index];
                                                            return Slideroffer1ItemWidget(
                                                                model);
                                                          }))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Obx(() => Container(
                                                      height:
                                                          getVerticalSize(8.00),
                                                      margin: getMargin(
                                                          left: 135,
                                                          top: 16,
                                                          right: 135),
                                                      child: AnimatedSmoothIndicator(
                                                          activeIndex:
                                                              controller
                                                                  .silderIndex
                                                                  .value,
                                                          count: controller
                                                              .dashboard1ModelObj
                                                              .value
                                                              .slideroffer1ItemList
                                                              .length,
                                                          axisDirection:
                                                              Axis.horizontal,
                                                          effect: ScrollingDotsEffect(
                                                              spacing: 8,
                                                              activeDotColor:
                                                                  ColorConstant
                                                                      .lightBlueA200,
                                                              dotColor:
                                                                  ColorConstant
                                                                      .blue50,
                                                              dotHeight:
                                                                  getVerticalSize(8.00),
                                                              dotWidth: getHorizontalSize(8.00)))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 24, right: 12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                                "lbl_category"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsBold14Indigo900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.50)),
                                                            Text(
                                                                "lbl_more_category"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: AppStyle
                                                                    .txtPoppinsBold14LightblueA200
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.50))
                                                          ]))),
                                              SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  padding: getPadding(top: 12),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            margin: getMargin(
                                                                bottom: 15),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomIconButton(
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgManshirticon)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              7,
                                                                          top:
                                                                              8,
                                                                          right:
                                                                              7),
                                                                      child: Text(
                                                                          "lbl_man_shirt"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular10
                                                                              .copyWith(letterSpacing: 0.50)))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 12,
                                                                bottom: 15),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomIconButton(
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgDressicon)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              19,
                                                                          top:
                                                                              8,
                                                                          right:
                                                                              19),
                                                                      child: Text(
                                                                          "lbl_dress"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular10
                                                                              .copyWith(letterSpacing: 0.50)))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 12),
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
                                                                  CustomIconButton(
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgManworkequipm)),
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          70.00),
                                                                      margin: getMargin(
                                                                          top:
                                                                              8),
                                                                      child: Text(
                                                                          "msg_man_work_equipm"
                                                                              .tr,
                                                                          maxLines:
                                                                              null,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style: AppStyle
                                                                              .txtPoppinsRegular10
                                                                              .copyWith(letterSpacing: 0.50)))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 12,
                                                                bottom: 15),
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
                                                                  CustomIconButton(
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgWomanbagicon)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  8),
                                                                          child: Text(
                                                                              "lbl_woman_bag".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtPoppinsRegular10.copyWith(letterSpacing: 0.50))))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 12,
                                                                bottom: 15),
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
                                                                  CustomIconButton(
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgManshoesicon)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  3,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  3),
                                                                          child: Text(
                                                                              "lbl_man_shoes".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtPoppinsRegular10.copyWith(letterSpacing: 0.50))))
                                                                ])),
                                                        Container(
                                                            margin: getMargin(
                                                                left: 12,
                                                                bottom: 15),
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
                                                                  CustomIconButton(
                                                                      height:
                                                                          70,
                                                                      width: 70,
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .imgHighheelsicon)),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  5,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  5),
                                                                          child: Text(
                                                                              "lbl_high_heels".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtPoppinsRegular10.copyWith(letterSpacing: 0.50))))
                                                                ]))
                                                      ])),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapFlashsalehead();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 24,
                                                              right: 12),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                    "lbl_flash_sale"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold14Indigo900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.50)),
                                                                Text(
                                                                    "lbl_see_more"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style: AppStyle
                                                                        .txtPoppinsBold14LightblueA200
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.50))
                                                              ])))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          250.00),
                                                      width: getHorizontalSize(
                                                          455.00),
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              padding:
                                                                  getPadding(
                                                                      top: 12),
                                                              scrollDirection:
                                                                  Axis
                                                                      .horizontal,
                                                              physics:
                                                                  BouncingScrollPhysics(),
                                                              itemCount: controller
                                                                  .dashboard1ModelObj
                                                                  .value
                                                                  .flashsale1ItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                Flashsale1ItemModel
                                                                    model =
                                                                    controller
                                                                        .dashboard1ModelObj
                                                                        .value
                                                                        .flashsale1ItemList[index];
                                                                return Flashsale1ItemWidget(
                                                                    model);
                                                              })))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 24, right: 12),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                                "lbl_mega_sale"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsBold14Indigo900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.50)),
                                                            Text(
                                                                "lbl_see_more"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                style: AppStyle
                                                                    .txtPoppinsBold14LightblueA200
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.50))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          250.00),
                                                      width: getHorizontalSize(
                                                          455.00),
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              padding:
                                                                  getPadding(
                                                                      top: 12),
                                                              scrollDirection:
                                                                  Axis
                                                                      .horizontal,
                                                              physics:
                                                                  BouncingScrollPhysics(),
                                                              itemCount: controller
                                                                  .dashboard1ModelObj
                                                                  .value
                                                                  .megasale1ItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                Megasale1ItemModel
                                                                    model =
                                                                    controller
                                                                        .dashboard1ModelObj
                                                                        .value
                                                                        .megasale1ItemList[index];
                                                                return Megasale1ItemWidget(
                                                                    model);
                                                              })))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 29, right: 12),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      5.00)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgRecomendedprod,
                                                              height:
                                                                  getVerticalSize(
                                                                      206.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      343.00),
                                                              fit: BoxFit
                                                                  .fill)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 16, right: 12),
                                                      child: Obx(() =>
                                                          GridView.builder(
                                                              shrinkWrap: true,
                                                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                  mainAxisExtent:
                                                                      getVerticalSize(
                                                                          283.00),
                                                                  crossAxisCount:
                                                                      2,
                                                                  mainAxisSpacing:
                                                                      getHorizontalSize(
                                                                          13.00),
                                                                  crossAxisSpacing:
                                                                      getHorizontalSize(
                                                                          13.00)),
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              itemCount: controller
                                                                  .dashboard1ModelObj
                                                                  .value
                                                                  .dashboard1ItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                Dashboard1ItemModel
                                                                    model =
                                                                    controller
                                                                        .dashboard1ModelObj
                                                                        .value
                                                                        .dashboard1ItemList[index];
                                                                return Dashboard1ItemWidget(
                                                                    model);
                                                              }))))
                                            ])))))
                          ]))),
              Container(
                  child: Container(
                      height: getVerticalSize(66.00),
                      width: getHorizontalSize(371.00),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                decoration: AppDecoration.fillWhiteA700,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(371.00),
                                          margin: getMargin(bottom: 64),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.blue50))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding: getPadding(top: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          margin: getMargin(top: 2),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 28, right: 27),
                                                    child: Container(
                                                        height: getSize(17.00),
                                                        width: getSize(17.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgHome,
                                                            fit: BoxFit.fill))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_home".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsBold10LightblueA200
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.50))))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 2),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 28, right: 27),
                                                    child: Container(
                                                        height: getSize(17.00),
                                                        width: getSize(17.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgSearchBluegray300,
                                                            fit: BoxFit.fill))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_explore".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.50))))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 2),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 28, right: 27),
                                                    child: Container(
                                                        height: getSize(17.00),
                                                        width: getSize(17.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgCart,
                                                            fit: BoxFit.fill))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_cart".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.50))))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 2),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 28, right: 27),
                                                    child: Container(
                                                        height: getSize(17.00),
                                                        width: getSize(17.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgOffer,
                                                            fit: BoxFit.fill))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_offer".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.50))))
                                              ])),
                                      Container(
                                          margin: getMargin(top: 1),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 27, right: 26),
                                                    child: Container(
                                                        height: getSize(19.00),
                                                        width: getSize(19.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgUser,
                                                            fit: BoxFit.fill))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 5),
                                                        child: Text(
                                                            "lbl_account".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtPoppinsRegular10
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.50))))
                                              ]))
                                    ])))
                      ])))
            ])));
  }

  onTapFlashsalehead() {
    Get.toNamed(AppRoutes.offer1Screen);
  }
}
