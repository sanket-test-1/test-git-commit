import '../controller/offer1_controller.dart';
import '../models/offer_screen1_item_model.dart';
import 'package:application11/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class OfferScreen1ItemWidget extends StatelessWidget {
  OfferScreen1ItemWidget(this.offerScreen1ItemModelObj);

  OfferScreen1ItemModel offerScreen1ItemModelObj;

  var controller = Get.find<Offer1Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  ImageConstant.imgProductimage3,
                  height: getSize(
                    133.00,
                  ),
                  width: getSize(
                    133.00,
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
                133.00,
              ),
              margin: getMargin(
                left: 16,
                top: 8,
                right: 16,
              ),
              child: Text(
                "msg_nike_air_max_27".tr,
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
              top: 4,
              right: 16,
            ),
            child: RatingBar.builder(
              initialRating: 4,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemSize: getVerticalSize(
                12.00,
              ),
              unratedColor: ColorConstant.blue50,
              itemCount: 5,
              updateOnDrag: true,
              onRatingUpdate: (rating) {},
              itemBuilder: (context, _) {
                return Icon(
                  Icons.star,
                  color: ColorConstant.yellow700,
                );
              },
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
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
              top: 4,
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
    );
  }
}
