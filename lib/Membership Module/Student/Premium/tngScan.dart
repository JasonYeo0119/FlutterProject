import 'UploadSS.dart';
import 'package:flutter/material.dart';

class Tngscan extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Tngscan();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return UploadSS();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
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
                top: 0,
                child: Container(
                  width: 390,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0xFFFFFBA9)),
                ),
              ),
              Positioned(
                left: 81,
                top: 32,
                child: SizedBox(
                  width: 230,
                  height: 19,
                  child: Text(
                    'Premium Plan',
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
                left: 321,
                top: 51,
                child: Container(width: 60, height: 60),
              ),
              Positioned(
                left: 23,
                top: 170,
                child: Container(
                  width: 344,
                  height: 422,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFB9A9A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 88,
                top: 340,
                child: Image.asset('lib/assets/images/tngQR.png'),
                width: 222,
                height: 222,
              ),
              Positioned(
                left: 30,
                top: 80,
                child: SizedBox(
                  width: 344,
                  height: 60,
                  child: Text(
                    'Screenshot and scan the QR code below to make a payment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 190,
                child: Image.asset('lib/assets/images/tng.png'),
                width: 89,
                height: 84,
              ),
              Positioned(
                left: 99,
                top: 285,
                child: SizedBox(
                  width: 191,
                  height: 28,
                  child: Text(
                    'Touch & Go',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),

              //Back button
              Positioned(
                left: 0,
                top: 0,
                child: InkWell(
                  onTap: () {
                    navigateNextPage(context);
                  },
                  borderRadius: BorderRadius.circular(12), // Adjust the value as needed
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
                        size:28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 80,
                top: 681,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage2(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 231,
                    height: 67,
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
                left: 150,
                top: 720,
                child: SizedBox(
                  width: 91,
                  height: 38,
                  child: Text(
                    'Next',
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
            ],
          ),
        ),
      ],
    ),
    ),
    )
    );
  }
}
