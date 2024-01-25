import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/PremiumProfile.dart';

class Successful extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return PremiumProfile();
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
                      fontSize: 26,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
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
                left: 96,
                top: 150,
                child: Image.asset('lib/assets/images/hooray.png'),
                width: 198,
                height: 189,
              ),
              Positioned(
                left: 64,
                top: 381,
                child: SizedBox(
                  width: 261,
                  height: 155,
                  child: Text(
                    'Hooray !\nYou are successfully upgrade to premium user\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 79,
                top: 677,
                child: TextButton(
                  onPressed: () {
                   navigateNextPage(context);
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
                left: 102,
                top: 718,
                child: SizedBox(
                  width: 186,
                  height: 38,
                  child: Text(
                    'Go To Profile',
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
