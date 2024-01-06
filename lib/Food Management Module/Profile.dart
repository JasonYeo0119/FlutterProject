import "package:flutter/material.dart";
import "EditHistory.dart";
import "EditAddress.dart";
import "EditEmail.dart";
import "EditName.dart";
import "EditPassword.dart";
import "EditProfilePic.dart";
import "HomepageStaff.dart";

class Profile extends StatelessWidget {
  @override
  //uncle hooi profile pic
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditProfilePic();
    }));
  }
  //edit name
  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditName();
    }));
  }
  //edit address
  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditAddress();
    }));
  }
  //edit history
  void navigateNextPage4(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditHistory();
    }));
  }
  //edit email
  void navigateNextPage5(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditEmail();
    }));
  }
  //edit password
  void navigateNextPage6(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditPassword();
    }));
  }
  //go back
  void navigateNextPage7(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }
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
                left: 30,
                top: 231,
                child: Container(
                  width: 154,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(13),
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
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0x99F21E37)),
                ),
              ),
              Positioned(
                left: 40,
                top: 32,
                child: SizedBox(
                  width: 141,
                  height: 34,
                  child: Text(
                    'Edit Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 213,
                top: 231,
                child: Container(
                  width: 154,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(13),
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
                left: 30,
                top: 435,
                child: Container(
                  width: 154,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(13),
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
                left: 213,
                top: 435,
                child: Container(
                  width: 154,
                  height: 175,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(13),
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
                left: 227,
                top: 452,
                child: Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.17,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 184,
                top: 101,
                child: Container(
                  width: 157,
                  height: 71,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(13),
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
                left: 30,
                top: 71,
                child: TextButton(
                  onPressed: () {navigateNextPage(context);},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: ClipOval(
                child: Image.asset('lib/assets/images/Uncle hooi’s cafe.png',
                  width: 132,
                  height: 131
                ),
                ),
                ),
              ),
              Positioned(
                left: 195,
                top: 119,
                child: Text(
                  'Uncle Hooi Cafe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.17,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 248,
                child: Text(
                  'Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.17,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 452,
                child: Text(
                  'Email Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.17,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 227,
                top: 248,
                child: Text(
                  'History',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.17,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 301,
                top: 155,
                child: Text(
                  '4.2/5.0',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.25,
                  ),
                ),
              ),
              Positioned(
                left: 195,
                top: 132,
                child: SizedBox(
                  width: 129,
                  child: Text(
                    'Join on 18 April 2023',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.25),
                      fontSize: 8,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.39,
                    ),
                  ),
                ),
              ),
              Positioned(  //edit name
                left: 283,
                top: 103,
                child: TextButton(
                  onPressed: () {navigateNextPage2(context);},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: SizedBox(
                  width: 24,
                  height: 17,
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1C4BF2),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.17,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                ),
              ),
              Positioned(  //edit password
                left: 315,
                top: 438,
                child: TextButton(
                  onPressed: () {navigateNextPage6(context);},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: SizedBox(
                  width: 24,
                  height: 17,
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1C4BF2),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.17,
                      letterSpacing: -0.50,
                    ),
                  ),
                  ),
                ),
              ),
              Positioned(  //edit email
                left: 131,
                top: 438,
                child: TextButton(
                  onPressed: () {navigateNextPage5(context);},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: SizedBox(
                  width: 24,
                  height: 17,
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1C4BF2),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.17,
                      letterSpacing: -0.50,
                    ),
                  ),
                  ),
                ),
              ),
              Positioned( //edit address
                left: 130,
                top: 233,
                child: TextButton(
                  onPressed: () {navigateNextPage3(context);},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: SizedBox(
                  width: 24,
                  height: 17,
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1C4BF2),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.17,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                ),
              ),
              Positioned( //edit history
                left: 315,
                top: 233,
                child: TextButton(
                  onPressed: () {navigateNextPage4(context);},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: SizedBox(
                  width: 24,
                  height: 17,
                  child: Text(
                    'Edit',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1C4BF2),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.17,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                ),
              ),
              Positioned(
                left: 292,
                top: 110,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 14,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 195,
                top: 143,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD200),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 0,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 215,
                top: 143,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD200),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 0,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 235,
                top: 143,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD200),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 0,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 255,
                top: 143,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFD200),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 0,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 275,
                top: 143,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: StarBorder(
                      points: 5,
                      innerRadiusRatio: 0.38,
                      pointRounding: 0,
                      valleyRounding: 0,
                      rotation: 0,
                      squash: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 245,
                top: 475,
                child:Opacity(
                  opacity: 0.15,
                child: Image.asset('lib/assets/images/password.png'),
                ),
                  width: 89,
                  height: 95,
              ),
              Positioned(
                left: 42,
                top: 258,
                child: SizedBox(
                  width: 128,
                  height: 50,
                  child: Text(
                    'Cafeteria Aman, K09, Desasiswa Aman Damai, USM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 43,
                top: 480,
                child: SizedBox(
                  width: 128,
                  height: 22,
                  child: Text(
                    'hooi283@usm.my',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 227,
                top: 258,
                child: SizedBox(
                  width: 130,
                  height: 500,
                  child: Text(
                    'Economic Rice              19/5\nEconomic Rice             03/5\nEconomic Rice             22/4\nEconomic Rice              19/4',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 227,
                top: 480,
                child: SizedBox(
                  width: 128,
                  height: 22,
                  child: Text(
                    'hooiUncle@@283',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.12,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 13,
                child: TextButton(
                  onPressed: () {navigateNextPage7(context);},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Image.asset('lib/assets/images/cancel button.png'),
                ),
                width: 25,
                height: 25,
              ),
              Positioned(
                left: 245,
                top: 274,
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset('lib/assets/images/clock.png'),
                ),
                    width: 90,
                    height: 89,
              ),
              Positioned(
                left: 56,
                top: 476,
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset('lib/assets/images/email.png'),
                ),
                  width: 99,
                  height: 93,
              ),
              Positioned(
                left: 61,
                top: 270,
                child: Opacity(
                  opacity: 0.15,
                  child: Image.asset('lib/assets/images/address icon.png'),
                ),
                    width: 90,
                    height: 92,
              ),
            ],
          ),
        ),
      ],
    );
  }
}