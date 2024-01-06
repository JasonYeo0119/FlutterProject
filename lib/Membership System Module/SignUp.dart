import 'package:flutter/material.dart';
import 'CreateRestaurantProfile.dart';
import 'CreateUserProfile.dart';
import 'StaffSignUp.dart';
import 'StudentSignUp.dart';

class Signup extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Studentsignup();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Staffsignup();
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
                left: 46,
                top: 160,
                child: SizedBox(
                  width: 298,
                  height: 85,
                  child: Text(
                    'You want to sign up as...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),

              // Sign up as a USM student
              Positioned(
                left: 70,
                top: 220,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 250,
                    height: 85,
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

              // Sign up as a staff button
              Positioned(
                left: 70,
                top: 346,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage2(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 250,
                    height: 85,
                    decoration: ShapeDecoration(
                      color: Color(0xFF1ECFA5),
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
                left: 93,
                top: 270,
                child: SizedBox(
                  width: 204,
                  height: 49,
                  child: Text(
                    'An USM Student ',
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
              Positioned(
                left: 93,
                top: 394,
                child: SizedBox(
                  width: 204,
                  height: 49,
                  child: Text(
                    'A Staff',
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
