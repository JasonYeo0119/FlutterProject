import "package:flutter/material.dart";
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/Profile.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key, required this.Profilekey}) : super(key: key);
  final String Profilekey;

  @override
  State<EditProfile> createState() => _EditProfileState();
}
class _EditProfileState extends State<EditProfile> {

  final name = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final email = TextEditingController();
  User? user;
  late DatabaseReference userRef;

  @override
  void initState() {
    super.initState();

    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userRef = FirebaseDatabase.instance.reference().child('Staff').child(user!.uid).child('Staff Info');
    }
    getProfileData();
  }

  void getProfileData() async {
    DataSnapshot snapshot = await userRef.child(widget.Profilekey).get();

    Map Profile = snapshot.value as Map;

    name.text = Profile['fullName'];
    phone.text = Profile['phone'];
    address.text = Profile['address'];
    email.text = Profile['email'];
  }

  @override
  //go back
  void navigateNextPage(BuildContext ctx) {
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
                decoration: BoxDecoration(color: Color(0x99F21E37)),
              ),
            ),
            Positioned(
              left: 50,
              top: 32,
              child: SizedBox(
                width: 141,
                height: 34,
                child: Text(
                  'Edit Profile',
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
              left: 100,
              top: 70,
              child: Image.asset('lib/assets/images/chef2.png'),
              width: 180,
              height: 180,
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
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 55,
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
                  controller: phone,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Please enter your phone number...',
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
              left: 45,
              top: 356,
              child: Text(
                'Phone No.',
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
                  controller: address,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Please enter your eateria address...',
                    hintStyle: TextStyle(fontSize: 15),
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
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
              left: 50,
              top: 415,
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
                  controller: email,
                  enabled: false, // Set this textfield to make the email uneditable
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //labelText: 'Name',
                      hintText: 'Please enter your email address...',
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
              left: 57,
              top: 474,
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
              left: 134,
              top: 630,
              child: MaterialButton(
                onPressed: () {
                  Map<String, String> Profile = {
                    'fullName': name.text,
                    'phone': phone.text,
                    'address': address.text,
                    'email': email.text,
                  };
                  userRef.child(widget.Profilekey).update(Profile)
                      .then((value) => {
                    Navigator.pop(context),
                    navigateNextPage(context)
                  }
                  );
                },
                child: Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF01579B)!.withOpacity(0.8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Adjust font weight as needed
                    ),
                  ),
                ),
              )
              ),
          ],
        ),
      ),
    );
  }
}

