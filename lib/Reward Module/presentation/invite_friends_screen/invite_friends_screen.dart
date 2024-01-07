import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/core/app_export.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/appbar_leading_image.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/appbar_title.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/custom_app_bar.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/custom_elevated_button.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InviteFriendsScreen extends StatelessWidget {
  InviteFriendsScreen({Key? key}) : super(key: key);

  TextEditingController weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                      height: 501.v,
                      width: 389.h,
                      decoration: AppDecoration.fillOrange,
                      child: Stack(alignment: Alignment.center, children: [
                        Opacity(
                            opacity: 0.04591259,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgOval2,
                                height: 333.v,
                                width: 275.h,
                                alignment: Alignment.topLeft)),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 47.h, right: 32.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFrame17,
                                          height: 285.v,
                                          width: 310.h),
                                      SizedBox(height: 23.v),
                                      Container(
                                          width: 286.h,
                                          margin: EdgeInsets.only(right: 22.h),
                                          child: Text(
                                              "Invite Friends\nto get more points!",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: theme
                                                  .textTheme.headlineLarge))
                                    ])))
                      ])),
                  _buildShareCode(context)
                ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 29.h, top: 5.v, bottom: 21.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Invite Friends"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildInviteFriendsColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Share Your Invite Code",
              style: CustomTextStyles.titleMediumSFUIDisplayOnPrimary),
          SizedBox(height: 21.v),
          CustomTextFormField(
              controller: weightController,
              hintText: "Y045KG",
              textInputAction: TextInputAction.done,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 3.v, 3.h, 17.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgTwitter,
                      height: 18.v,
                      width: 16.h)),
              suffixConstraints: BoxConstraints(maxHeight: 39.v))
        ]));
  }

  /// Section Widget
  Widget _buildShareCode(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 42.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          _buildInviteFriendsColumn(context),
          SizedBox(height: 35.v),
          CustomElevatedButton(
              height: 41.v,
              text: "Invite Friends",
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle:
                  CustomTextStyles.titleMediumSFUIDisplayWhiteA700),
          SizedBox(height: 15.v)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
