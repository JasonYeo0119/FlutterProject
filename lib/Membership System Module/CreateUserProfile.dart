import 'package:flutter/material.dart';
import 'NormalProfile.dart';
import 'StudentSignUp.dart';
import 'UploadUserPhoto.dart';

class Createuserprofile extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Normalprofile();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Uploaduserprofile();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Studentsignup();
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
              Positioned(
                left: 215,
                top: 120,
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
              Positioned(
                left: 215,
                top: 155,
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
                  ),
                ),
              ),
              Positioned(
                left: 206,
                top: 368,
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
                left: 196,
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

              //Upload photo button
              Positioned(
                left: 25,
                top: 80,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage2(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
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
                  opacity: 0.2,
                  child: Image.asset('lib/assets/images/upload symbol.png'),
                ),
                width: 50,
                height: 50,
              ),
              Positioned(
                left: 88,
                top: 149,
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

              //Confirm button
              Positioned(
                left: 108,
                top: 593,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
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

              //Back button
              Positioned(
                  left: 0,
                  top: 25,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage3(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
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
                  )),
              Positioned(
                left: 207,
                top: 199,
                child: Container(
                  width: 157,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Color(0xFF908E8E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 228,
                top: 222,
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
            ],
          ),
        ),
      ],
    );
  }
}
