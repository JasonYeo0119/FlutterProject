import '../voucher_page_screen/widgets/vouchercomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/core/app_export.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/appbar_leading_image.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/appbar_title.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/app_bar/custom_app_bar.dart';
import 'package:usmfoodsaver/Reward%20Module/presentation/tnc_bottomsheet/tnc_bottomsheet.dart';

class VoucherPageScreen extends StatelessWidget {
  const VoucherPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: _buildVoucherPage(context)))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 61.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 38.h, top: 9.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Vouchers"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildVoucherPage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 22.h, right: 17.h, bottom: 5.v),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtViewClaimedVouchers(context);
                  },
                  child: Text("View Claimed Vouchers",
                      style: CustomTextStyles.titleMediumPink500
                          .copyWith(decoration: TextDecoration.underline)))),
          SizedBox(height: 3.v),
          Padding(
              padding: EdgeInsets.only(right: 11.h),
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 36.v);
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return VouchercomponentItemWidget(onTapTxtText: () {
                      onTapTxtText(context);
                    }, onTapTxtEndson31dec20222: () {
                      onTapTxtEndson31dec20222(context);
                    });
                  }))
        ]));
  }

  /// Navigates to the redeemedScreen when the action is triggered.
  onTapTxtText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.redeemedScreen);
  }

  /// Shows a modal bottom sheet with [TncBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapTxtEndson31dec20222(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => TncBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the redeemedScreen when the action is triggered.
  onTapTxtViewClaimedVouchers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.redeemedScreen);
  }
}
