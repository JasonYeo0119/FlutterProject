import 'package:flutter/material.dart';
import 'DuitNowScan.dart';
import 'tngScan.dart';
import 'PremiumPrice.dart';

class Paymentmethod extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Premiumprice();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Tngscan();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Duitnowqr();
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
                left: 80,
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
                top: 140,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage2(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 344,
                    height: 116,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFB9A9A),
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
                left: 23,
                top: 280,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage3(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 344,
                    height: 116,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFFBA9),
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
                left: 0,
                top: 85,
                child: SizedBox(
                  width: 350,
                  height: 30,
                  child: Text(
                    'Select preferable payment method',
                    textAlign: TextAlign.center,
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
                left: 51,
                top: 158,
                child: Image.asset('lib/assets/images/tng.png'),
                width: 87,
                height: 82.11,
              ),
              Positioned(
                left: -5,
                top: 264,
                child: Image.asset('lib/assets/images/DuitNow.png'),
                width: 200,
                height: 150,
              ),
              Positioned(
                left: 165,
                top: 185,
                child: SizedBox(
                  width: 157,
                  height: 28,
                  child: Text(
                    'Touch & Go',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 165,
                top: 323,
                child: SizedBox(
                  width: 132,
                  height: 30,
                  child: Text(
                    'DuitNow',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),

              // Back button
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
                left: 310,
                top: 172,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    navigateNextPage2(context); // Add this line to navigate back
                  },
                ),
              ),
              Positioned(
                left: 310,
                top: 312,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    navigateNextPage3(context); // Add this line to navigate back
                  },
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
