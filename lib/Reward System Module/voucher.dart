import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/tnc.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/redemeed.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/reward_home.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class VoucherPage extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Tnc();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Redeemed();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return RewardSystem();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: SingleChildScrollView(
      child: Column(
      children: [
          Container(
            width: 390,
            height: 777,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFF9ADBBF)),
                  ),
                ),
                Positioned(
                  left: 22,
                  top: 115,
                  child: Container(
                    width: 338,
                    height: 98,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 335,
                          height: 98,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.03),
                                bottomLeft: Radius.circular(8.03),
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 16.06,
                                top: 16.06,
                                child: Container(
                                  width: 32.11,
                                  height: 32.11,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.01),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: double.infinity,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 32.11,
                                                height: 32.33,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'lib/assets/images/reward/img_frame_2.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 62.22,
                                top: 16.06,
                                child: Text(
                                  'Strive Chocolate',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Space Grotesk',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 218,
                                top: 74,
                                child: TextButton(
                                  onPressed: () {
                                    navigateNextPage2(context);
                                  },
                                  child: Text(
                                    'Claim Voucher',
                                    style: TextStyle(
                                      color: Color(0xFF9ADBBF),
                                      fontSize: 16,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 62,
                                top: 42,
                                child: SizedBox(
                                  width: 197,
                                  child: GestureDetector(
                                    onTap: () {
                                      navigateNextPage(context);
                                    },
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Ends on 31 Dec 2022   ',
                                            style: TextStyle(
                                              color: Color(0xFF8D8D8D),
                                              fontSize: 13,
                                              fontFamily: 'Space Mono',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'T&C',
                                            style: TextStyle(
                                              color: Color(0xFF8D8D8D),
                                              fontSize: 13,
                                              fontFamily: 'Space Mono',
                                              fontWeight: FontWeight.w700,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.01,
                          height: 98.47,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/2x98"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 195,
                  top: 69,
                  child: TextButton(
                    child: Text(
                      'View Claimed Vouchers',
                      style: TextStyle(
                        color: Color(0xFFEB008A),
                        fontSize: 16,
                        fontFamily: 'Space Grotesk',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        height: 0,
                      ),
                    ),
                    onPressed: () {
                      navigateNextPage2(context);
                    },
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 250,
                  child: Container(
                    width: 338,
                    height: 98,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 335,
                          height: 98,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.03),
                                bottomLeft: Radius.circular(8.03),
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 16.06,
                                top: 16.06,
                                child: Container(
                                  width: 32.11,
                                  height: 32.11,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.01),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: double.infinity,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 32.11,
                                                height: 32.33,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'lib/assets/images/reward/uncle_hooi.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 62.22,
                                top: 16.06,
                                child: Text(
                                  'Uncle Hooi\'s Cafe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Space Grotesk',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 218,
                                top: 74,
                                child: TextButton(
                                  onPressed: () {
                                    navigateNextPage2(context);
                                  },
                                  child: Text(
                                    'Claim Voucher',
                                    style: TextStyle(
                                      color: Color(0xFF9ADBBF),
                                      fontSize: 16,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 62,
                                top: 40,
                                child: SizedBox(
                                  width: 197,
                                  child: GestureDetector(
                                    onTap: () {
                                      navigateNextPage(context);
                                    },
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Ends on 31 Dec 2022   ',
                                            style: TextStyle(
                                              color: Color(0xFF8D8D8D),
                                              fontSize: 13,
                                              fontFamily: 'Space Mono',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'T&C',
                                            style: TextStyle(
                                              color: Color(0xFF8D8D8D),
                                              fontSize: 13,
                                              fontFamily: 'Space Mono',
                                              fontWeight: FontWeight.w700,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.01,
                          height: 98.47,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/2x98"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 22,
                  top: 384,
                  child: Container(
                    width: 338,
                    height: 98,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 335,
                          height: 98,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.03),
                                bottomLeft: Radius.circular(8.03),
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 16.06,
                                top: 16.06,
                                child: Container(
                                  width: 32.11,
                                  height: 32.11,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.01),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: double.infinity,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 32.11,
                                                height: 32.33,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'lib/assets/images/reward/mcd.png'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 62.22,
                                top: 16.06,
                                child: Text(
                                  'McD',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'Space Grotesk',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 218,
                                top: 74,
                                child: TextButton(
                                  onPressed: () {
                                    navigateNextPage2(context);
                                  },
                                  child: Text(
                                    'Claim Voucher',
                                    style: TextStyle(
                                      color: Color(0xFF9ADBBF),
                                      fontSize: 16,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 62,
                                top: 42,
                                child: SizedBox(
                                  width: 197,
                                  child: GestureDetector(
                                    onTap: () {
                                      navigateNextPage(context);
                                    },
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Ends on 31 Dec 2022   ',
                                            style: TextStyle(
                                              color: Color(0xFF8D8D8D),
                                              fontSize: 13,
                                              fontFamily: 'Space Mono',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'T&C',
                                            style: TextStyle(
                                              color: Color(0xFF8D8D8D),
                                              fontSize: 13,
                                              fontFamily: 'Space Mono',
                                              fontWeight: FontWeight.w700,
                                              decoration:
                                                  TextDecoration.underline,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 2.01,
                          height: 98.47,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/2x98"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 137,
                  top: 11,
                  child: Text(
                    'Vouchers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Space Grotesk',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: GestureDetector(
                    onTap: () {
                      navigateNextPage3(context);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      child: Transform.rotate(
                        angle: -1.57,
                        child: Icon(
                          Icons.arrow_upward,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      )
      )
    );
  }
}
