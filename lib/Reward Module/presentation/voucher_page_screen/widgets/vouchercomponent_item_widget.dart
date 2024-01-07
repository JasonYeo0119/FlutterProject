import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/core/app_export.dart';

// ignore: must_be_immutable
class VouchercomponentItemWidget extends StatelessWidget {
  VouchercomponentItemWidget({
    Key? key,
    this.onTapTxtText,
    this.onTapTxtEndson31dec20222,
  }) : super(
          key: key,
        );

  VoidCallback? onTapTxtText;

  VoidCallback? onTapTxtEndson31dec20222;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img200918000433Strive32x32,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 14.v,
                    bottom: 48.v,
                  ),
                ),
                Container(
                  height: 80.v,
                  width: 266.h,
                  margin: EdgeInsets.only(
                    left: 13.h,
                    top: 14.v,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: GestureDetector(
                          onTap: () {
                            onTapTxtText!.call();
                          },
                          child: Text(
                            "Claim Voucher",
                            style: theme.textTheme.titleMedium!.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Strive Chocolate",
                              style: theme.textTheme.titleLarge,
                            ),
                            SizedBox(height: 1.v),
                            GestureDetector(
                              onTap: () {
                                onTapTxtEndson31dec20222!.call();
                              },
                              child: SizedBox(
                                width: 151.h,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Ends on 31 Dec 2022   ",
                                        style: CustomTextStyles
                                            .bodyMediumSpaceMono,
                                      ),
                                      TextSpan(
                                        text: "T&C",
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 98.v,
          child: VerticalDivider(
            width: 2.h,
            thickness: 2.v,
          ),
        ),
      ],
    );
  }
}
