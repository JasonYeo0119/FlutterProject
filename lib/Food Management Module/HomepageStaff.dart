import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'PostFood.dart';
import 'Profile.dart';
import 'RealtimeUpdate.dart';
import 'ViewReviewAndRating.dart';

class HomepageStaff extends StatefulWidget {
  const HomepageStaff({Key? key}) : super(key: key);
  @override
  State<HomepageStaff> createState() => _HomepageStaffState();
}

class _HomepageStaffState extends State<HomepageStaff> {

  @override
  //blue button
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return PostFood();
    }));
    }

    //yellow button
  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return ViewReviewAndRating();
    }));
  }

    //green button
  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return RealtimeUpdate();
    }));
  }

    //red button
  void navigateNextPage4(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Profile();
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          width: 390,
          height: 777,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
          child: Stack(
            children: [
              Positioned(
                left: 38,
                top: 106,
                child: TextButton(
                onPressed: () {navigateNextPage(context);},  //blue
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 316,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0x8C6BA5FD),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(93),
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
                left: 38,
                top: 253,
                child: TextButton(
                  onPressed: () {navigateNextPage2(context);}, //yellow
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Container(
                  width: 316,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFFBA9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(93),
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
                left: 38,
                top: 400,
                child: TextButton(
                  onPressed: () {navigateNextPage3(context);}, //green
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Container(
                  width: 316,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0x68009243),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(93),
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
                left: 38,
                top: 547,
                child: TextButton(
                  onPressed: () {navigateNextPage4(context);}, //red
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Container(
                  width: 316,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Color(0x99F21E37),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(93),
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
                left: 12,
                top: 679,
                child: Container(
                  width: 368,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(93),
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
                left: 37,
                top: 688,
                      child: ClipOval(
                      child: Image.asset('lib/assets/images/Uncle hooi’s cafe.png',
                      width:37,
                      height: 37,
                      ),
                    ),
              ),
              Positioned(
                left: 84,
                top: 714,
                child: Text(
                  'Uncle Hooi Cafe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.04,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 276,
                top: 691,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 32,
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
              Positioned(
                left: 290,
                top: 699,
                child: TextButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      print("Signed Out");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    });
                  },
                  child: Text(
                    'Sign out',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF21C1C),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.06,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 8,
                top: 65,
                child: SizedBox(
                  width: 379,
                  height: 86,
                  child: Text(
                    'Welcome to USM FoodSaver!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 163,
                child: SizedBox(
                  width: 149,
                  height: 86,
                  child: Text(
                    'Make a post',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 313,
                child: SizedBox(
                  width: 181,
                  height: 86,
                  child: Text(
                    'View my rating',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 138,
                top: 605,
                child: SizedBox(
                  width: 170,
                  height: 86,
                  child: Text(
                    'Edit my profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 130,
                top: 457,
                child: SizedBox(
                  width: 214,
                  height: 86,
                  child: Text(
                    'Real-time update',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 125,
                child: Image.asset('lib/assets/images/make a post.png'),
                width: 60,
                height: 60,
                  ),
              Positioned(
                left: 67,
                top: 283,
                child: Image.asset('lib/assets/images/view rating.png'),
                width: 46,
                height: 42,
              ),
              Positioned(
                left: 65,
                top: 575,
                child: Image.asset('lib/assets/images/update profile.png'),
                width: 46,
                height: 42,
              ),
              Positioned(
                left: 67,
                top: 430,
                child: Image.asset('lib/assets/images/real time update.png'),
                width: 46,
                height: 42,
              ),
            ],
          ),
        ),
    );
  }
}