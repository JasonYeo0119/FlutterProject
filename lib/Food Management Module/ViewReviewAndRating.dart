import "package:flutter/material.dart";
import "HomepageStaff.dart";



class ViewReviewAndRating extends StatelessWidget {
  @override
  //go back
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          width: 390,
          height: 1500,
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
                left: 40,
                top: 32,
                child: SizedBox(
                  width: 141,
                  height: 34,
                  child: Text(
                    'View Rating',
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
                left: 15,
                top: 13,
                child: TextButton(
                  onPressed: () {navigateNextPage(context);},  //blue
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Image.asset('lib/assets/images/cancel button.png'),
                ),
                width: 25,
                height: 25,
              ),
              Positioned(
                left: 36,
                top: 94,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 54,
                top: 115,
                child: Text(
                  'Anonymous',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 260,
                top: 115,
                child: Text(
                  '6 hours ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 140,
                top: 103,
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
                left: 160,
                top: 103,
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
                left: 180,
                top: 103,
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
                left: 200,
                top: 103,
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
                left: 220,
                top: 103,
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
                left: 35,
                top: 234,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 62,
                top: 255,
                child: Text(
                  'Ng Jie Xing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 257,
                top: 255,
                child: Text(
                  '10 hours ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 243,
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
                left: 159,
                top: 243,
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
                left: 179,
                top: 243,
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
                left: 199,
                top: 243,
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
                left: 219,
                top: 243,
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
                left: 35,
                top: 374,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 57,
                top: 395,
                child: Text(
                  'Tan Xiao Hu',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 275,
                top: 395,
                child: Text(
                  '1 day ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 383,
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
                left: 159,
                top: 383,
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
                left: 179,
                top: 383,
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
                left: 199,
                top: 383,
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
                left: 219,
                top: 383,
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
                left: 35,
                top: 514,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 46,
                top: 536,
                child: Text(
                  'Mohd. Ali Bin..',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 523,
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
                left: 159,
                top: 523,
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
                left: 179,
                top: 523,
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
                left: 199,
                top: 523,
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
                left: 219,
                top: 523,
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
                left: 35,
                top: 654,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 48,
                top: 676,
                child: Text(
                  'Vanish A/L T..',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 663,
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
                left: 159,
                top: 663,
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
                left: 179,
                top: 663,
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
                left: 199,
                top: 663,
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
                left: 219,
                top: 663,
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
                left: 35,
                top: 794,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 53,
                top: 816,
                child: Text(
                  'Anonymous',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 803,
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
                left: 159,
                top: 803,
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
                left: 179,
                top: 803,
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
                left: 199,
                top: 803,
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
                left: 219,
                top: 803,
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
                left: 35,
                top: 934,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 53,
                top: 956,
                child: Text(
                  'Anonymous',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 943,
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
                left: 159,
                top: 943,
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
                left: 179,
                top: 943,
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
                left: 199,
                top: 943,
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
                left: 219,
                top: 943,
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
                left: 35,
                top: 1074,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 53,
                top: 1096,
                child: Text(
                  'Anonymous',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 1083,
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
                left: 159,
                top: 1083,
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
                left: 179,
                top: 1083,
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
                left: 199,
                top: 1083,
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
                left: 219,
                top: 1083,
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
                left: 35,
                top: 1214,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 53,
                top: 1236,
                child: Text(
                  'Anonymous',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 1223,
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
                left: 159,
                top: 1223,
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
                left: 179,
                top: 1223,
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
                left: 199,
                top: 1223,
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
                left: 219,
                top: 1223,
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
                left: 35,
                top: 1354,
                child: Container(
                  width: 319,
                  height: 111,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
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
                left: 53,
                top: 1376,
                child: Text(
                  'Anonymous',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 139,
                top: 1363,
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
                left: 159,
                top: 1363,
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
                left: 179,
                top: 1363,
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
                left: 199,
                top: 1363,
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
                left: 219,
                top: 1363,
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
                left: 275,
                top: 536,
                child: Text(
                  '1 day ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 275,
                top: 676,
                child: Text(
                  '1 day ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 274,
                top: 816,
                child: Text(
                  '2 days ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 274,
                top: 956,
                child: Text(
                  '3 days ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 274,
                top: 1096,
                child: Text(
                  '5 days ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 274,
                top: 1236,
                child: Text(
                  '6 days ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 274,
                top: 1376,
                child: Text(
                  '7 days ago',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.41999998688697815),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.13,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 54,
                top: 133,
                child: Text(
                  'The food is too spicy.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.25,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 273,
                child: Text(
                  'The food is not match with the photo but taste good.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.25,
                  ),
                ),
              ),
              Positioned(
                left: 57,
                top: 415,
                child: SizedBox(
                  width: 282,
                  child: Text(
                    'The food is ok. The attitude of staff is good and he is friendly',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 53,
                top: 839,
                child: SizedBox(
                  width: 282,
                  child: Text(
                    'Food is good but the staff service bad.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}