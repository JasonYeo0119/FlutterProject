import 'package:flutter/material.dart';
import '../Food Management Module/HomepageStaff.dart';

class Stafflogin extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
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
                left: 16,
                top: 47,
                child: Image.asset('lib/assets/images/USM FoodSaver Logo.png'),
                width: 357,
                height: 306,
              ),
              Positioned(
                left: 72,
                top: 345,
                child: SizedBox(
                  width: 248,
                  height: 44,
                  child: Text(
                    'Welcome Back!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1ECFA5),
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 25,
                top: 380,
                child: SizedBox(
                  width: 336,
                  height: 96,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Please input your ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: 'staff email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 1.5,
                          ),
                        ),
                        WidgetSpan(
                          child:
                              SizedBox(width: 8), // Add space between text span
                        ),
                        TextSpan(
                          text: 'and your',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'email password',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                              width: 8), // Add space between text spans
                        ),
                        TextSpan(
                          text: ' \n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        TextSpan(
                          text: 'before getting back to your account',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 512,
                child: Container(
                  width: 319,
                  height: 150,
                  decoration: ShapeDecoration(
                    color: Colors.white,
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
                left: 36,
                top: 589,
                child: Container(
                  width: 319,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0x564E82D0),
                      ),
                    ),
                  ),
                ),
              ),

              // Login button
              Positioned(
                left: 106,
                top: 691.99,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 178,
                    height: 56.68,
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
                left: 133,
                top: 725,
                child: SizedBox(
                  width: 124,
                  height: 34.74,
                  child: Text(
                    'Login',
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
                left: 54,
                top: 558,
                child: SizedBox(
                  width: 282,
                  height: 54,
                  child: Text(
                    'Staff Email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1ECFA5),
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 633,
                child: SizedBox(
                  width: 289,
                  height: 54,
                  child: Text(
                    'Email Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1ECFA5),
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
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
