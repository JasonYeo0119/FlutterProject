import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/core/app_export.dart';
import 'package:usmfoodsaver/Reward%20Module/widgets/custom_elevated_button.dart';

class FailDialog extends StatelessWidget {
  const FailDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: _buildErrorSection(context));
  }

  /// Section Widget
  Widget _buildErrorSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 18.h, right: 18.h, bottom: 386.v),
        padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 8.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 91.h),
                  child: Text("Error",
                      style: CustomTextStyles.headlineSmallPoppinsRedA700)),
              Container(
                  width: 240.h,
                  margin: EdgeInsets.only(right: 22.h),
                  child: Text(
                      "You don’t have enough points to claim this voucher.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge)),
              SizedBox(height: 2.v),
              CustomElevatedButton(
                  height: 24.v,
                  width: 71.h,
                  text: "close",
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                  onPressed: () {
                    onTapClose(context);
                  },
                  alignment: Alignment.center)
            ]));
  }

  /// Navigates to the voucherPageScreen when the action is triggered.
  onTapClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.voucherPageScreen);
  }
}
