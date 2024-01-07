import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/core/app_export.dart';

class RedeemedScreen extends StatelessWidget {
  const RedeemedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 49.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: _buildRedeemedSection(context)))
                ]))));
  }

  /// Section Widget
  Widget _buildRedeemedSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 608.v),
        child: Column(children: [
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 9.v),
              decoration: AppDecoration.fillGreen,
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 24.v,
                    width: 23.h,
                    margin: EdgeInsets.symmetric(vertical: 3.v),
                    onTap: () {
                      onTapImgArrowLeft(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 41.h),
                    child: Text("Claimed Vouchers",
                        style: theme.textTheme.headlineSmall))
              ])),
          SizedBox(height: 44.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 6.v),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL8),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.img200918000433Strive32x32,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  radius: BorderRadius.circular(4.h),
                                  margin:
                                      EdgeInsets.only(top: 9.v, bottom: 43.v)),
                              Expanded(
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 13.h, top: 9.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: 42.v,
                                                width: 160.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Text(
                                                              "Strive Chocolate",
                                                              style: theme
                                                                  .textTheme
                                                                  .titleLarge)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Text(
                                                              "Ends on 31 Dec 2022",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium))
                                                    ])),
                                            SizedBox(height: 11.v),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text("Claimed",
                                                    style: CustomTextStyles
                                                        .titleMediumDeeporange500))
                                          ])))
                            ]))),
                SizedBox(
                    height: 98.v,
                    child: VerticalDivider(width: 2.h, thickness: 2.v))
              ]))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
