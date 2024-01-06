import "package:flutter/material.dart";
import "HomepageStaff.dart";
import "RealtimeUpdate2.dart";

class RealtimeUpdate extends StatelessWidget {
  @override
  //go back
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }
  //update button
  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return RealtimeUpdate2();
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
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0x7F009343)),
                ),
              ),
              Positioned(
                left: 40,
                top: 32,
                child: SizedBox(
                  width: 200,
                  height: 34,
                  child: Text(
                    'Real-time update',
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
                left: 9,
                top: 95,
                child: Container(
                  width: 371,
                  height: 206,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCD92),
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
                left: 133,
                top: 171,
                child: Icon(
                  Icons.location_on,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Positioned(
                left: 137,
                top: 127,
                child: Text(
                  'Economic Rice',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 137,
                top: 148,
                child: Text(
                  'Quantity',
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
                left: 160,
                top: 242,
                child: Text(
                  'RM3.00',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.21,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 231,
                top: 127,
                child: Text(
                  '(Uncle Hooi Cafe)',
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
                left: 160,
                top: 215,
                child: Text(
                  'Rice, Vegetable, Meat, Egg',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.21,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 133,
                top: 202,
                child: Icon(
                  Icons.bookmark,
                  size: 25,
                  color: Colors.black,
                ),
              ),
              Positioned(
                left: 160,
                top: 174,
                child: SizedBox(
                  width: 208,
                  height: 24,
                  child: Text(
                    'Cafeteria Aman, K09, Desasiswa Aman Damai, USM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 135,
                top: 231,
                child: Icon(
                  Icons.sell,
                  size: 22,
                  color: Colors.black,
                ),
              ),
              Positioned(
                left: 193,
                top: 135,
                child: Container(
                  width: 26,
                  height: 22,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Positioned(
                left: 202,
                top: 148,
                child: Text(
                  '3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.17,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 119,
                child: SizedBox(
                  width: 108,
                  height: 125,
                child: Image.asset('lib/assets/images/food.jpg',
                fit: BoxFit.cover,
                ),
                ),
              ),
              Positioned(
                left: 22,
                top: 257,
                child: Container(
                  width: 345,
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
              Positioned(
                left: 170,
                top: 260,
                child: TextButton(
                  onPressed: () {navigateNextPage2(context);},  //blue
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Text(
                  'Update',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.13,
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