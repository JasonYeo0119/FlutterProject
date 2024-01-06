import 'package:flutter/material.dart';

class Loginfail extends StatelessWidget {
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
                left: 78,
                top: 340,
                child: SizedBox(
                  width: 248,
                  height: 44,
                  child: Text(
                    'Sorry...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 0.03,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 375,
                child: SizedBox(
                  width: 336,
                  height: 105,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'You entered a wrong ID or account password. \n',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                              width: 8), // Add space between text spans
                        ),
                        TextSpan(
                          text: 'Please try again.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
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
                left: 92,
                top: 93,
                child: Image.asset('lib/assets/images/sad emoji.png'),
                width: 203,
                height: 184,
              ),
              Positioned(
                left: 69,
                top: 672,
                child: SizedBox(
                  width: 268,
                  height: 31,
                  child: Text(
                    'Do not have any account？',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 127,
                top: 703,
                child: SizedBox(
                  width: 151,
                  height: 25,
                  child: Text(
                    'Click here >>',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1C4BF2),
                      fontSize: 18,
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
                left: 105,
                top: 528,
                child: Container(
                  width: 178,
                  height: 62,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFFBA9),
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
              Positioned(
                left: 133,
                top: 542.07,
                child: SizedBox(
                  width: 124,
                  height: 34.74,
                  child: Text(
                    'Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
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
