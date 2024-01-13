import 'package:flutter/material.dart';

class Tnc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  top: 52,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFF9ADBBF)),
                  ),
                ),
                Positioned(
                  left: 22,
                  top: 135,
                  child: Container(
                    width: 335,
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
                              Positioned(
                                left: 62,
                                top: 42,
                                child: SizedBox(
                                  width: 197,
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
                  top: 109,
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
                ),
                Positioned(
                  left: 24,
                  top: 270,
                  child: Container(
                    width: 335,
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
                              Positioned(
                                left: 62,
                                top: 40,
                                child: SizedBox(
                                  width: 197,
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
                  top: 404,
                  child: Container(
                    width: 335,
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
                                                width: 214,
                                                height: 48,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://via.placeholder.com/214x48"),
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
                              Positioned(
                                left: 62,
                                top: 42,
                                child: SizedBox(
                                  width: 197,
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
                  top: 61,
                  child: Text(
                    'Vouchers',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Space Grotesk',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 38,
                  top: 85,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(-1.57),
                    child: Container(
                      width: 24,
                      height: 23,
                      decoration: ShapeDecoration(
                        color: Colors.black,
                        shape: StarBorder.polygon(sides: 3),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 390,
                    height: 850,
                    decoration: BoxDecoration(color: Color(0x5BD9D9D9)),
                  ),
                ),
                Positioned(
                  left: 1,
                  top: 374,
                  child: Container(
                    width: 389,
                    height: 507,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 389,
                            height: 507,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 53,
                          top: 91,
                          child: SizedBox(
                            width: 305,
                            height: 350,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'General\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'The voucher collected automatically apply at “Claimed Vouchers” page if criteria is met.\nVoucher can be used on food in the cafeteria/eateries.\nThis voucher applies a discount on the food price.\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Destination\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  Nation wide\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Space Grotesk',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 342,
                          top: 24,
                          child: SizedBox(
                            width: 25,
                            height: 24,
                            child: Text(
                              'X',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Space Grotesk',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 67,
                          top: 41,
                          child: SizedBox(
                            width: 248,
                            height: 43,
                            child: Text(
                              'Terms and Condition',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontFamily: 'Space Grotesk',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
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
        ],
      ),
    );
  }
}
