import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumSpaceMono => theme.textTheme.bodyMedium!.spaceMono;
  // Headline text style
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPoppinsRedA700 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSFUIDisplayOnPrimary =>
      theme.textTheme.headlineSmall!.sFUIDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeSpaceGroteskBlack900 =>
      theme.textTheme.labelLarge!.spaceGrotesk.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  // Space text style
  static get spaceGroteskCyan400ce => TextStyle(
        color: appTheme.cyan400Ce,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w700,
      ).spaceGrotesk;
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumCyan400ce => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan400Ce,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDeeporange500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange500,
      );
  static get titleMediumPink500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink500,
      );
  static get titleMediumSFUIDisplayOnPrimary =>
      theme.textTheme.titleMedium!.sFUIDisplay.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFUIDisplayWhiteA700 =>
      theme.textTheme.titleMedium!.sFUIDisplay.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get sFUIDisplay {
    return copyWith(
      fontFamily: 'SF UI Display',
    );
  }

  TextStyle get spaceMono {
    return copyWith(
      fontFamily: 'Space Mono',
    );
  }

  TextStyle get spaceGrotesk {
    return copyWith(
      fontFamily: 'Space Grotesk',
    );
  }
}
