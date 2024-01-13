import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart';
// import 'UserProfile.dart';

class Givefeedback2 extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Normalprofile();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 777,
        color: Color(0xFFE5FFFC),
        child: Column(
          children: [
            Container(
              width: 390,
              height: 50,
              color: Color(0xFF9ADBBF),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Feedback',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            Positioned(
              left: 9,
              top: 30,
              child: Container(
                width: 371,
                height: 300,
                decoration: ShapeDecoration(
                  color: Color(0xFFF2E6C7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 371,
                      height: 43,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFCD92),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
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
                      child: Center(
                        child: Text(
                          'Feedback Successful',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30), // Adjust spacing between title and content
                    Positioned(
                      left: 135,
                      top: 10, // Adjust top position as needed
                      child: Image.asset(
                        'lib/assets/images/tick.jpg',
                        width: 80,
                        height: 80,
                      ),
                    ),
                    SizedBox(height: 30), // Adjust spacing between title and content
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20), // Add padding for content
                      child: Text(
                        'Your feedback has been successfully sent to the relevant cafeteria/restaurant staff. Thanks for your sharing!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
              SizedBox(height: 170),
              // Back to menu button
            Positioned(
              left: 64,
              bottom: 20,
              child: MaterialButton(
                onPressed: () {
                  navigateNextPage(context);
                },
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 4,
                color: Color(0xFF9ADBBF),
                child: Container(
                  width: 230,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Back To Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


           ],
          ),
        )
      );
  }
}