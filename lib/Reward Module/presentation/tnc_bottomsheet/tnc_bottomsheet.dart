import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/core/app_export.dart';

class TncBottomsheet extends StatelessWidget {
  const TncBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 24.v),
            decoration: AppDecoration.fillWhiteA
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 36.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 16.v),
                                child: Text("Terms and Condition",
                                    style: CustomTextStyles.headlineSmallBold)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtX(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 37.h, bottom: 16.v),
                                    child: Text("X",
                                        style: CustomTextStyles
                                            .headlineSmallBold)))
                          ]))),
              SizedBox(height: 19.v),
              Container(
                  width: 294.h,
                  margin: EdgeInsets.only(left: 22.h, right: 10.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "General\n",
                            style: CustomTextStyles.titleLargeBold_1),
                        TextSpan(
                            text:
                                "The voucher collected automatically apply at “Claimed Vouchers” page if criteria is met.\nVoucher can be used on food in the cafeteria/eateries.\nThis voucher applies a discount on the food price.\n\n",
                            style: CustomTextStyles.titleLargeRegular_1),
                        TextSpan(
                            text: "Destination\n  Nation wide\n",
                            style: CustomTextStyles.titleLargeBold_1)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 54.v)
            ])));
  }

  /// Navigates to the voucherPageScreen when the action is triggered.
  onTapTxtX(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.voucherPageScreen);
  }
}
