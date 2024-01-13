import 'package:usmfoodsaver/Membership%20Module/HomePage/HomePage.dart';
import 'package:flutter/material.dart';

class Normalprofile extends StatelessWidget {
  /*void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Premiumplan();
    }));
  }*/

  /*void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CreateUserProfile();
    }));
  }*/

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomePage();
    }));
  }

  /*void navigateNextPage4(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return RewardSystemScreen();
    }));
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  decoration: BoxDecoration(color: Color(0xFFFB9A9A)),
                ),
              ),
              Positioned(
                left: 81,
                top: 32,
                child: SizedBox(
                  width: 230,
                  height: 19,
                  child: Text(
                    'My Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),

              //Menu button
              Positioned(
                left: 321,
                top: 2,
                child: Icon(
                  Icons.food_bank,
                  size: 40,
                  color: Colors.black,
                ),
                width: 34,
                height: 34,
              ),
              Positioned(
                left: 215,
                top: 130,
                child: Text(
                  'Yeo Min Sheng ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                    letterSpacing: -0.50,
                  ),
                ),
              ),

              // Normal member button
              Positioned(
                left: 207,
                top: 199,
                child: TextButton(
                  onPressed: () {
                   /* navigateNextPage(context);*/
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 157,
                    height: 37,
                    decoration: ShapeDecoration(
                      color: Color(0xFF908E8E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 228,
                top: 227,
                child: Text(
                  'Normal Member',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 215,
                top: 165,
                child: Text(
                  '157975',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.06,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 282,
                child: Text(
                  'yeo0606.jy@student.usm.my',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    height: 0.06,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 80,
                child: Image.asset('lib/assets/images/Oppa1.png'),
                width: 170,
                height: 170,
              ),
              Positioned(
                left: 158,
                top: 720,
                child: Text(
                  'Contact Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF1C4BF2),
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 166,
                top: 731,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage3(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Text(
                    'Log out',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF21C1C),
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 341,
                child: Container(
                  width: 148,
                  height: 92,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCD92),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 365,
                child: Text(
                  'Reward Coins',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 390,
                child: SizedBox(
                  width: 80,
                  child: Text(
                    '0 coins',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 346,
                child: Container(
                  width: 180,
                  height: 87,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCD92),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 205,
                top: 369,
                child: Text(
                  'Order History',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 194,
                top: 390,
                child: SizedBox(
                  width: 126,
                  child: Text(
                    'Check your order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 466,
                child: Container(
                  width: 352,
                  height: 87,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCD92),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 490,
                child: Text(
                  'Rewards Centre',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 512,
                child: SizedBox(
                  width: 322,
                  height: 35,
                  child: Text(
                    'Daily check-in and redeem your e-voucher',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),

              //Edit button
              Positioned(
                left: 298,
                top: 56,
                child: TextButton(
                  onPressed: () {
                    /*navigateNextPage2(context);*/
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 80,
                    height: 38,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFBEB9A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 273,
                top: 85,
                child: SizedBox(
                  width: 131,
                  height: 38,
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
