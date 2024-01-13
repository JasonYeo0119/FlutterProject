import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/voucher.dart';

class Redeemed extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return VoucherPage();
    }));
  }

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
                  top: 49,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFF9ADBBF)),
                  ),
                ),
                Positioned(
                  left: 27,
                  top: 143,
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
                                left: 62,
                                top: 42,
                                child: Text(
                                  'Ends on 31 Dec 2022',
                                  style: TextStyle(
                                    color: Color(0xFF8D8D8D),
                                    fontSize: 13,
                                    fontFamily: 'Space Grotesk',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 243,
                                top: 71,
                                child: Text(
                                  'Claimed',
                                  style: TextStyle(
                                    color: Color(0xFFFF5D18),
                                    fontSize: 16,
                                    fontFamily: 'Space Grotesk',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
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
                  left: 91,
                  top: 58,
                  child: Text(
                    'Claimed Vouchers',
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
                  left: 27,
                  top: 70,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage(context);
                    },
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
