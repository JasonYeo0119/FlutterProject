import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/reward_home.dart';

class InviteFriends extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return RewardSystem();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 390,
            height: 815,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 50,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFF9ADBBF)),
                  ),
                ),
                Positioned(
                  left: -2,
                  top: 590,
                  child: Container(
                    width: 392,
                    height: 260,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 392,
                            height: 260,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                        ),
                        Positioned(
                          left: 20.91,
                          top: 160.43,
                          child: Container(
                            width: 350.19,
                            height: 41.49,
                            decoration: ShapeDecoration(
                              color: Color(0xFF22BAB8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 144.26,
                          top: 162.41,
                          child: SizedBox(
                            width: 105.58,
                            height: 19.36,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Invite Friends',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'SF UI Display',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.91,
                          top: 43.33,
                          child: SizedBox(
                            width: 187.11,
                            height: 19.36,
                            child: Text(
                              'Share Your Invite Code',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 17,
                                fontFamily: 'SF UI Display',
                                fontWeight: FontWeight.w600,
                                height: 0,
                                letterSpacing: 0.41,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.91,
                          top: 84.82,
                          child: SizedBox(
                            width: 101.40,
                            height: 26.74,
                            child: Text(
                              'Y045KG',
                              style: TextStyle(
                                color: Color(0xFF242E42),
                                fontSize: 24,
                                fontFamily: 'SF UI Display',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 0.41,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 351.23,
                          top: 88.51,
                          child: Container(
                            width: 16.73,
                            height: 18.44,
                            child: Stack(children: []),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0.31,
                  top: 89,
                  child: Container(
                    width: 389.69,
                    height: 501,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 389.69,
                            height: 501,
                            decoration: BoxDecoration(color: Color(0xFFF1BA4E)),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 389.69,
                            height: 501,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 389.69,
                                    height: 501,
                                    decoration:
                                        BoxDecoration(color: Color(0xFFE5FFFC)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16.69,
                          top: 368.74,
                          child: SizedBox(
                            width: 352.28,
                            height: 65.70,
                            child: Text(
                              'Invite Friends\nto get more points!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF22BAB8),
                                fontSize: 30,
                                fontFamily: 'Space Grotesk',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 0.36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 124,
                  top: 55,
                  child: Text(
                    'Invite Friends',
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
                  top: 43,
                  child: GestureDetector(
                    onTap: () {
                      navigateNextPage(context);
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
                Positioned(
                  left: 48,
                  top: 150,
                  child: Container(
                    width: 310,
                    height: 285,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("lib/assets/images/reward/invite.jpg"),
                        fit: BoxFit.fill,
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
