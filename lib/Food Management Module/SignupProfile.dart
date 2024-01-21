import "package:flutter/material.dart";
import "package:usmfoodsaver/Food%20Management%20Module/Profile.dart";
import "package:usmfoodsaver/Membership%20Module/Staff/staff_signup.dart";
import 'package:firebase_database/firebase_database.dart';

class SignupProfile extends StatefulWidget {
  const SignupProfile({Key? key}) : super(key: key);

  @override
  State<SignupProfile> createState() => _SignupProfileState();
}
class _SignupProfileState extends State<SignupProfile> {

  final name = TextEditingController();
  final address = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child(
        'Profile'); //represents the location 'Profile' within the database
  }

  @override
  //go back
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return StaffSignUp();
    }));
  }
  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Profile();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                decoration: BoxDecoration(color: Color(0x7F6BA6FE)),
              ),
            ),
            Positioned(
              left: 50,
              top: 32,
              child: SizedBox(
                width: 141,
                height: 34,
                child: Text(
                  'Sign up Profile',
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
              left: 134,
              top: 100,
              child: Container(
                width: 122,
                height: 141,
                decoration: BoxDecoration(color: Color(0xB7D9D9D9)),
              ),
            ),
            Positioned(
              left: 141,
              top: 141,
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
            Positioned(
              left: 26,
              top: 277,
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
              left: 118,
              top: 277,
              child: Container(
                width: 245,
                height: 34,
                child: TextField(
                  controller: name,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Please enter your name...',
                      hintStyle: TextStyle(fontSize: 15),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                  ),
                ),
              ),
            ),
            Positioned(
              left: 119,
              top: 277,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(1.57),
                child: Container(
                  width: 33,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignInside
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 52,
              top: 297,
              child: Text(
                'Name',
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
            Positioned(
              left: 26,
              top: 336,
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
              left: 118,
              top: 336,
              child: Container(
                width: 245,
                height: 34,
                child: TextField(
                  controller: address,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Please enter your address...',
                      hintStyle: TextStyle(fontSize: 15),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                  ),
                ),
              ),
            ),
            Positioned(
              left: 119,
              top: 336,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(1.57),
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
            Positioned(
              left: 48,
              top: 356,
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
            Positioned(
              left: 26,
              top: 395,
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
              left: 118,
              top: 395,
              child: Container(
                width: 245,
                height: 34,
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //labelText: 'Name',
                      hintText: 'Please enter your email...',
                      hintStyle: TextStyle(fontSize: 15),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                  ),
                ),
              ),
            ),
            Positioned(
              left: 119,
              top: 395,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(1.57),
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
            Positioned(
              left: 56,
              top: 415,
              child: Text(
                'Email',
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
            Positioned(
              left: 26,
              top: 454,
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
              left: 118,
              top: 454,
              child: Container(
                width: 245,
                height: 34,
                child: TextField(
                  controller: password,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //labelText: 'Name',
                      hintText: 'Please enter your password...',
                      hintStyle: TextStyle(fontSize: 15),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                  ),
                ),
              ),
            ),
            Positioned(
              left: 119,
              top: 454,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(1.57),
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
            Positioned(
              left: 45,
              top: 474,
              child: Text(
                'Password',
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
            Positioned(
              left: 15,
              top: 13,
              child: TextButton(
                onPressed: () {
                  navigateNextPage(context);
                }, //X
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Image.asset('lib/assets/images/cancel button.png'),
              ),
              width: 25,
              height: 25,
            ),
            Positioned(
              left: 154,
              top: 630,
              child: MaterialButton(
                onPressed: () {
                  Map<String, String> Profile = {
                    'Name': name.text,
                    'Address': address.text,
                    'Email': email.text,
                    'Password': password.text,
                  };
                  dbRef.push().set(Profile);
                  navigateNextPage2(context);
                },
                child: const Text('Confirm',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                color: Colors.lightBlueAccent,
                textColor: Colors.black,
                minWidth: 80,
                height: 40,
                elevation: 6,
              ),
            ),
          ], // Children
        ),
      ),
    );
  }
}