import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20Module/presentation/reward_system_screen/reward_system_screen.dart';
import 'package:usmfoodsaver/Reward%20Module/presentation/voucher_page_screen/voucher_page_screen.dart';
import 'package:usmfoodsaver/Reward%20Module/presentation/redeemed_screen/redeemed_screen.dart';
import 'package:usmfoodsaver/Reward%20Module/presentation/invite_friends_screen/invite_friends_screen.dart';
import 'package:usmfoodsaver/Reward%20Module/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String rewardSystemScreen = '/reward_system_screen';

  static const String voucherPageScreen = '/voucher_page_screen';

  static const String redeemedScreen = '/redeemed_screen';

  static const String inviteFriendsScreen = '/invite_friends_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    rewardSystemScreen: (context) => RewardSystemScreen(),
    voucherPageScreen: (context) => VoucherPageScreen(),
    redeemedScreen: (context) => RedeemedScreen(),
    inviteFriendsScreen: (context) => InviteFriendsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
