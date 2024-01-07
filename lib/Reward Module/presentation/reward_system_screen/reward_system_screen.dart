import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/core/app_export.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/appbar_leading_image.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/appbar_title.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/custom_app_bar.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/custom_elevated_button.dart';

class RewardSystemScreen extends StatelessWidget {
  const RewardSystemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 7.h, bottom: 5.v),
                        child: Column(children: [
                          _buildEleven(context),
                          SizedBox(height: 20.v),
                          _buildFiftyThree(context),
                          SizedBox(height: 41.v),
                          _buildThirtyFive(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 27.h, top: 7.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Rewards"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return SizedBox(
        height: 350.v,
        width: 374.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 350.v,
                  width: 374.h,
                  decoration: BoxDecoration(
                      color: appTheme.orange200,
                      borderRadius: BorderRadius.circular(187.h),
                      border: Border.all(color: appTheme.black900, width: 1.h),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.black900.withOpacity(0.25),
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(0, 4))
                      ]))),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 52.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 68.h),
                            child: Text("Total Points",
                                style: CustomTextStyles.titleMediumCyan400ce)),
                        SizedBox(height: 2.v),
                        Container(
                            decoration: AppDecoration.outlineBlack,
                            child: Text("3050",
                                style: CustomTextStyles.spaceGroteskCyan400ce)),
                        SizedBox(height: 12.v),
                        CustomElevatedButton(
                            width: 140.h,
                            text: "Check-in",
                            margin: EdgeInsets.only(left: 44.h))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 30.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text("Get rewarded",
                    style: CustomTextStyles.titleMediumBlack900)),
            GestureDetector(
                onTap: () {
                  onTapTxtSeeAll(context);
                },
                child: Padding(
                    padding: EdgeInsets.only(bottom: 4.v),
                    child: Text("See all",
                        style: CustomTextStyles.bodyMediumBlack90014)))
          ])),
      SizedBox(height: 11.v),
      Row(children: [
        Container(
            width: 184.h,
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame2,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      radius: BorderRadius.circular(4.h),
                      margin: EdgeInsets.only(bottom: 24.v)),
                  Padding(
                      padding: EdgeInsets.only(bottom: 9.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 115.h,
                                child: Text("Caramel Frappucino Large",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargeSpaceGroteskBlack900)),
                            SizedBox(height: 1.v),
                            Text("Ends on 31 Dec 2022",
                                style: theme.textTheme.bodySmall)
                          ]))
                ])),
        CustomImageView(
            imagePath: ImageConstant.imgUser, height: 88.v, width: 45.h),
        Container(
            width: 184.h,
            margin: EdgeInsets.only(left: 21.h),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomImageView(
                  imagePath: ImageConstant.img200918000433Strive,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(4.h),
                  margin: EdgeInsets.only(bottom: 24.v)),
              Padding(
                  padding: EdgeInsets.only(left: 14.h, bottom: 24.v),
                  child: Column(children: [
                    Text("Strive Chocolate",
                        style: CustomTextStyles.labelLargeSpaceGroteskBlack900),
                    SizedBox(height: 3.v),
                    Text("Ends on 31 Dec 2022",
                        style: theme.textTheme.bodySmall)
                  ]))
            ])),
        CustomImageView(
            imagePath: ImageConstant.imgUser, height: 88.v, width: 45.h)
      ])
    ]);
  }

  /// Section Widget
  Widget _buildFiftyThree(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20.h),
            child: IntrinsicWidth(child: _buildThirtyFour(context))));
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Earn more points", style: CustomTextStyles.titleMediumBlack900),
          SizedBox(height: 13.v),
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 16.h, right: 24.h),
                  padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                  decoration: AppDecoration.outlinePink.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Row(mainAxisSize: MainAxisSize.max, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFrame14,
                        height: 112.v,
                        width: 107.h,
                        margin: EdgeInsets.only(top: 2.v)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 6.h, top: 9.v, bottom: 6.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Invite friends ",
                                  style: CustomTextStyles.titleLargeBold),
                              SizedBox(height: 3.v),
                              SizedBox(
                                  width: 126.h,
                                  child: Text(
                                      "Each successful invitation will get 5 points",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 19.v),
                              CustomElevatedButton(
                                  height: 22.v,
                                  width: 109.h,
                                  text: " invite code",
                                  buttonTextStyle: theme.textTheme.titleSmall!,
                                  onPressed: () {
                                    onTapInviteCode(context);
                                  },
                                  alignment: Alignment.centerRight)
                            ]))
                  ])))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the voucherPageScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.voucherPageScreen);
  }

  /// Navigates to the inviteFriendsScreen when the action is triggered.
  onTapInviteCode(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inviteFriendsScreen);
  }
}
