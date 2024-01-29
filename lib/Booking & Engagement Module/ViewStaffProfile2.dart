import "package:flutter/material.dart";
import 'package:usmfoodsaver/Booking%20&%20Engagement%20Module/Menu.dart';

class ViewStaffProfile2 extends StatefulWidget {
  const ViewStaffProfile2({Key? key}) : super(key: key);
  State<ViewStaffProfile2> createState() => _ViewStaffProfile2State();
}
class _ViewStaffProfile2State extends State<ViewStaffProfile2> {

  @override
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Menu();
    }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 390,
          height: 777,
          color: Color(0xFFE5FFFC),
          child: Stack(
              children: [
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
                  left: 130,
                  top: 32,
                  child: SizedBox(
                    width: 141,
                    height: 34,
                    child: Text(
                      'Aunty Ng Cafe',
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
                  left: 7,
                  top: 0,
                  child:IconButton(
                    icon: Icon(Icons.arrow_back, size: 30,),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Positioned(
                  left: 105,
                  top: 65,
                  child: ClipOval(
                    child: Image.asset('lib/assets/images/Staff3.png',
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
                Positioned(
                  left: 26,
                  top: 270,
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
                Positioned(
                  left: 100,
                  top: 271,
                  child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                    child: Container(
                      width: 33,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignInside,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 290,
                  child: Text(
                    'Name',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 115,
                  top: 290,
                  child: Text(
                    'Aunty Ng Cafe',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 26,
                  top: 320,
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
                Positioned(
                  left: 100,
                  top: 321,
                  child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                    child: Container(
                      width: 33,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignInside,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 48,
                  top: 340,
                  child: Text(
                    'Email',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 115,
                  top: 340,
                  child: Text(
                    'AuntyNg@gmail.com',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 26,
                  top: 370,
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
                Positioned(
                  left: 100,
                  top: 371,
                  child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                    child: Container(
                      width: 33,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignInside,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 390,
                  child: Text(
                    'Address',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 115,
                  top: 390,
                  child: Text(
                    'Cafeteria Restu, USM',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 26,
                  top: 420,
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
                Positioned(
                  left: 100,
                  top: 421,
                  child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                    child: Container(
                      width: 33,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignInside,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 440,
                  child: Text(
                    'Contact',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 115,
                  top: 440,
                  child: Text(
                    '018-6231106',
                    textAlign: TextAlign.start,
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
                Positioned(
                  left: 135,
                  top: 480,
                  child: Text(
                    'Joined 1 months ago',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0.15,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ]
          )
      ),
    );
  }
}