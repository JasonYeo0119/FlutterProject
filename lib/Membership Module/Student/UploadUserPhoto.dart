import 'package:flutter/material.dart';
import 'CreateUserProfile.dart';

class Uploaduserprofile extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Createuserprofile();
    }));
  }

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
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFFFB9A9A)),
                  ),
                ),
              ),
              Positioned(
                left: 81,
                top: 32,
                child: SizedBox(
                  width: 230,
                  height: 19,
                  child: Opacity(
                    opacity: 0.20,
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
              ),
              Positioned(
                left: 215,
                top: 120,
                child: Opacity(
                  opacity: 0.20,
                  child: Text(
                    'Nickname',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF908E8E),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 215,
                top: 155,
                child: Opacity(
                  opacity: 0.20,
                  child: Text(
                    'Matric No.',
                    style: TextStyle(
                      color: Color(0xFF908E8E),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 282,
                child: Opacity(
                  opacity: 0.20,
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
              ),
              Positioned(
                left: 20,
                top: 341,
                child: Opacity(
                  opacity: 0.20,
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
              ),
              Positioned(
                left: 33,
                top: 365,
                child: Opacity(
                  opacity: 0.20,
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
              ),
              Positioned(
                left: 20,
                top: 390,
                child: SizedBox(
                  width: 80,
                  child: Opacity(
                    opacity: 0.20,
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
              ),
              Positioned(
                left: 192,
                top: 346,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 180,
                    height: 87,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFCD92),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 205,
                top: 370,
                child: Opacity(
                  opacity: 0.20,
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
              ),
              Positioned(
                left: 196,
                top: 390,
                child: SizedBox(
                  width: 126,
                  child: Opacity(
                    opacity: 0.20,
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
              ),
              Positioned(
                left: 20,
                top: 466,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 352,
                    height: 87,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFCD92),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 480,
                child: Opacity(
                  opacity: 0.20,
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
              ),
              Positioned(
                left: 34,
                top: 512,
                child: SizedBox(
                  width: 322,
                  height: 35,
                  child: Opacity(
                    opacity: 0.20,
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
              ),
              Positioned(
                left: 25,
                top: 80,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 170,
                    height: 171,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 83,
                top: 135,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    child: Image.asset('lib/assets/images/upload symbol.png'),
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 149,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 50,
                    height: 43,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 43,
                          child: Stack(children: []),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 108,
                top: 593,
                child: Opacity(
                  opacity: 0.20,
                  child: Container(
                    width: 175,
                    height: 56,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFB9A9A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
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
                left: 130,
                top: 630,
                child: SizedBox(
                  width: 131,
                  height: 38,
                  child: Opacity(
                    opacity: 0.20,
                    child: Text(
                      'Confirm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0.05,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 37,
                child: Opacity(
                  opacity: 0.20,
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
              Positioned(
                left: 207,
                top: 199,
                child: Opacity(
                  opacity: 0.20,
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
                top: 222,
                child: Opacity(
                  opacity: 0.20,
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
              ),
              Positioned(
                left: 156,
                top: 695,
                child: Opacity(
                  opacity: 0.20,
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
              ),
              Positioned(
                left: 0,
                top: 252,
                child: Container(
                  width: 390,
                  height: 299,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFE7E7),
                    boxShadow: [
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
                left: 0,
                top: 252,
                child: Container(
                  width: 390,
                  height: 39,
                  decoration: BoxDecoration(color: Color(0xFFFB9A9A)),
                ),
              ),
              Positioned(
                left: 12,
                top: 276,
                child: Text(
                  'Upload your profile picture',
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

              //Upload button
              Positioned(
                left: 165,
                top: 485,
                child: Text(
                  'Upload',
                  style: TextStyle(
                    color: Color(0xFF1C4BF2),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    height: 0.08,
                    letterSpacing: -0.50,
                  ),
                ),
              ),

              //Cancel button
              Positioned(
                left: 0,
                top: 506,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 195,
                    height: 45,
                    decoration: BoxDecoration(color: Color(0xFFDB9A9A)),
                  ),
                ),
              ),

              Positioned(
                left: 52,
                top: 535,
                child: SizedBox(
                  width: 90,
                  height: 19,
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),

              //Save button
              Positioned(
                left: 195,
                top: 506,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 195,
                    height: 45,
                    decoration: BoxDecoration(color: Color(0xFF9ADBBF)),
                  ),
                ),
              ),
              Positioned(
                left: 246,
                top: 535,
                child: SizedBox(
                  width: 100,
                  height: 19,
                  child: Text(
                    'Save',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                      letterSpacing: -0.50,
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
