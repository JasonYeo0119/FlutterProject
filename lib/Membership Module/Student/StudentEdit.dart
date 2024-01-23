import "package:flutter/material.dart";
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart";
import "package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart";

class StudentEdit extends StatefulWidget {
  const StudentEdit({Key? key, required this.StudentProfilekey}) : super(key: key);
  final String StudentProfilekey;

  @override
  State<StudentEdit> createState() => _StudentEditState();
}
class _StudentEditState extends State<StudentEdit> {

  final StudentEmail = TextEditingController();
  final StudentName = TextEditingController();
  final MatricNo = TextEditingController();
  User? user;
  late DatabaseReference userRef;

  @override
  void initState() {
    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userRef = FirebaseDatabase.instance.reference().child('Student').child(user!.uid).child('Student Info');
    }
    getStudentProfileData();
  }

  void getStudentProfileData() async {
    DataSnapshot snapshot = await userRef.child(widget.StudentProfilekey).get();

    Map StudentProfile = snapshot.value as Map;

    StudentName.text = StudentProfile['fullName'];
    MatricNo.text = StudentProfile['matricNo'];
    StudentEmail.text = StudentProfile['email'];
  }

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Normalprofile();
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
                            decoration: BoxDecoration(color: Color(0xFFFB9A9A)),
                          ),
                        ),
                        Positioned(
                          left: 81,
                          top: 32,
                          child: SizedBox(
                            width: 230,
                            height: 19,
                            child: Text(
                              'Edit Profile',
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

                        SizedBox(height: 10), // Add a SizedBox for spacing
                        Positioned(
                          left: 95, // Adjusted the left value to center the image based on your layout
                          top: 85,
                          child: Container(
                            width: 200, // Set the width as needed
                            height: 200, // Set the height as needed
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('lib/assets/images/boygirl.png'), // Set the correct image path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),









                        Positioned(
                          left: 20,
                          top: 300,
                          child: Container(
                            width: 353,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFCBCB),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildInputField('Name', 'Please input your name...', StudentName),
                                buildInputField('MatricNo.', 'Please input your MatricNo...', MatricNo),
                                buildInputField('Email', 'Please input your email...', StudentEmail),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          left: 88,
                          top: 149,
                          child: Container(
                            width: 50,
                            height: 43,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 43,
                                  child: Stack(children: []),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Update button
                        Positioned(
                          left: 145,
                          top: 515,
                          child: MaterialButton(
                            onPressed: () {
                              Map<String, String> StudentProfile = {
                                'email': StudentEmail.text,
                                'fullName': StudentName.text,
                                'matricNo': MatricNo.text,
                              };
                              userRef.child(widget.StudentProfilekey).update(StudentProfile)
                                  .then((value) => {
                                Navigator.pop(context),
                                navigateNextPage(context)
                              }
                              );
                            },
                            child: Container(
                              width: 90,
                              height: 40,
                              decoration: ShapeDecoration(
                                color: Color(0xFFFBEB9A),
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
                          left: 133,
                          top: 540,
                          child: SizedBox(
                            width: 131,
                            height: 38,
                            child: Text(
                              'Update',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0.05,
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

                        // Contact Us
                        Positioned(
                            left: 80,
                            top: 675,
                            child: InkWell(
                              onTap: () {
                                launchEmail('usmfoodsaver@gmail.com');
                              },
                              child: SizedBox(
                                width: 235,
                                height: 30,
                                child: Text(
                                  'Contact Us',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF1C4BF2),
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                    height: 0.09,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ],
              )
          ),
        )
    );

  }

  Widget buildInputField(String label, String placeholder, TextEditingController controller) {
    bool isEmailField = label.toLowerCase().contains('email');

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
          ),
          SizedBox(width: 4),  // Add some space between label and text field
          Expanded(
            child: Container(
              height: 34,
              decoration: BoxDecoration(
                color: Color(0xFFFFCBCB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: isEmailField
                    ? TextFormField(
                  controller: controller,
                  readOnly: true, // Make the email field uneditable
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF794832),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: placeholder,
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.5)),
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                )
                    : TextField(
                  controller: controller,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF794832),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: placeholder,
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.5)),
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  }

