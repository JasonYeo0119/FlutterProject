import "package:flutter/material.dart";
import "HomepageStaff.dart";

class DonePost extends StatelessWidget {
  @override
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            child: Opacity(
              opacity: 0.20,
                child: Container(
                  width: 390,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0x7F6BA6FE)),
                ),
            ),
              ),
              Positioned(
                left: 40,
                top: 32,
                child: Opacity(
                  opacity: 0.20,
                child: SizedBox(
                  width: 141,
                  height: 34,
                  child: Text(
                    'Post a feed',
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
              ),
              Positioned(
                left: 134,
                top: 100,
                child: Opacity(
                  opacity: 0.20,
                child: Container(
                  width: 122,
                  height: 141,
                  decoration: BoxDecoration(color: Color(0xB7D9D9D9)),
                ),
              ),
              ),
              Positioned(
                left: 141,
                top: 141,
                child: Opacity(
                  opacity: 0.20,
                child: SizedBox(
                  width: 108,
                  child: Text(
                    'Tap here to add photo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                ),
              ),
              Positioned(
                left: 26,
                top: 277,
                child: Opacity(
                  opacity: 0.20,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 277,
                child: Opacity(
                  opacity: 0.20,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
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
              ),
              Positioned(
                left: 39,
                top: 297,
                child: Opacity(
                  opacity: 0.20,
                child: Text(
                  'Food Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
                ),
              ),
              Positioned(
                left: 26,
                top: 336,
                child: Opacity(
                  opacity: 0.20,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                ),
              ),
              Positioned(
                left: 119,
                top: 336,
                child: Opacity(
                  opacity: 0.20,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
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
              ),
              Positioned(
                left: 48,
                top: 355,
                child: Opacity(
                  opacity: 0.20,
                child: Text(
                  'Quantity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
                ),
              ),
              Positioned(
                left: 26,
                top: 395,
                child: Opacity(
                  opacity: 0.20,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 395,
                child: Opacity(
                  opacity: 0.20,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
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
              ),
              Positioned(
                left: 37,
                top: 415,
                child: Opacity(
                  opacity: 0.20,
                child: Text(
                  'Store Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
                ),
              ),
              Positioned(
                left: 26,
                top: 454,
                child: Opacity(
                  opacity: 0.20,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 454,
                child: Opacity(
                  opacity: 0.20,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
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
              ),
              Positioned(
                left: 47,
                top: 473,
                child: Opacity(
                  opacity: 0.20,
                child: Text(
                  'Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
                ),
              ),
              Positioned(
                left: 26,
                top: 513,
                child: Opacity(
                  opacity: 0.20,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 513,
                child: Opacity(
                  opacity: 0.20,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
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
              ),
              Positioned(
                left: 42,
                top: 533,
                child: Opacity(
                  opacity: 0.20,
                child: Text(
                  'Price (RM)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
                ),
              ),
              Positioned(
                left: 26,
                top: 572,
                child: Opacity(
                  opacity: 0.20,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                ),
              ),
              Positioned(
                left: 119,
                top: 572,
                child: Opacity(
                  opacity: 0.20,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
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
              ),
              Positioned(
                left: 46,
                top: 591,
                child: Opacity(
                  opacity: 0.20,
                child: Text(
                  'Remarks',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
                ),
              ),
              Positioned(
                left: 15,
                top: 13,
                child: Opacity(
                  opacity: 0.20,
                  child: Image.asset('lib/assets/images/cancel button.png'),
                ),
                width: 25,
                height: 25,
              ),
              Positioned(
                left: 201,
                top: 682,
                  child: Container(
                    width: 163,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFF9ADBBF),
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
                left: 196,
                top: 723,
                child: Opacity(
                opacity: 0.20,
                  child: SizedBox(
                    width: 174,
                    height: 38,
                    child: Text(
                      'Done',
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
                left: 24,
                top: 682,
                  child: Container(
                    width: 163,
                    height: 64,
                    decoration: ShapeDecoration(
                      color: Color(0xFFDB9A9A),
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
                left: 18,
                top: 722,
                child: Opacity(
                  opacity: 0.20,
                  child: SizedBox(
                    width: 174,
                    height: 38,
                    child: Text(
                      'Cancel',
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
                left: 0,
                top: 0,
                child: TextButton(
                  onPressed: () {navigateNextPage(context);}, //yellow
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Opacity(
                  opacity: 0,
                  child: Container(
                    width: 390,
                    height: 777,
                    decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                  ),
                ),
                ),
              ),
              Positioned(
                left: 18,
                top: 327,
                child: Opacity(
                  opacity: 0.98,
                  child: Container(
                    width: 354,
                    height: 124,
                    decoration: ShapeDecoration(
                      color: Color(0xFF393636),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 97,
                top: 397,
                child: Text(
                  'Post Successfully !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.04,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
        ),
    );
  }
}