import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/HomePage.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart';

class CreateUserProfile extends StatefulWidget {
  const CreateUserProfile({Key? key}) : super(key: key);

  @override
  State<CreateUserProfile> createState() => _CreateUserProfileState();
}
class _CreateUserProfileState extends State<CreateUserProfile> {
  final StudentEmail = TextEditingController();
  final StudentName = TextEditingController();
  final MatricNo = TextEditingController();
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Students').child('NormalPlan');
  }

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomePage();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
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
                    'Create Profile',
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
                left: 20,
                top: 250,
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
                left: 20,
                top: 456,
                child: Container(
                  width: 148,
                  height: 85,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCD92),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 480,
                child: Text(
                  'Reward Coins',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 500,
                child: SizedBox(
                  width: 80,
                  child: Text(
                    '0 coins',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 192,
                top: 455,
                child: Container(
                  width: 180,
                  height: 87,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCD92),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 206,
                top: 477,
                child: Text(
                  'Order History',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 196,
                top: 499,
                child: SizedBox(
                  width: 126,
                  child: Text(
                    'Check your order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 565,
                child: Container(
                  width: 352,
                  height: 87,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFCD92),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 589,
                child: Text(
                  'Rewards Centre',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 611,
                child: SizedBox(
                  width: 322,
                  height: 35,
                  child: Text(
                    'Daily check-in and redeem your e-voucher',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),

              //Upload photo button
              Positioned(
                left: 135,
                top: 60,
                child: TextButton(
                  onPressed: () {
                    /*navigateNextPage2(context);*/
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 185,
                top: 110,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset('lib/assets/images/upload symbol.png'),
                ),
                width: 30,
                height: 30,
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

              // Confirm button
              Positioned(
                left: 108,
                top: 680,
                /*child: TextButton(
                  onPressed: () {
                    // Get the input values
                    String email = StudentEmail.text;
                    String name = StudentName.text;
                    String matric = MatricNo.text;

                    // Create a map with the input values
                    Map<String, dynamic> NormalProfile = {
                      'Useremail': email,
                      'profilename': name,
                      'matricNo': matric,
                    };

                    // Store the data in the database
                    dbRef.push().set(NormalProfile);

                    // Navigate to the normal profile screen and pass the input values
                    navigateNextPage(
                      context,
                      email: email,
                      name: name,
                      matric: matric,
                    );
                  },*/


                child: MaterialButton(
                  onPressed: () {
                    Map<String, String> StudentProfile = {
                      'Useremail': StudentEmail.text,
                      'profilename': StudentName.text,
                      'matricNo': MatricNo.text,
                    };
                    dbRef.push().set(StudentProfile);
                    navigateNextPage2(context);
                  },
                  child: Container(
                    width: 175,
                    height: 56,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFB9A9A),
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
              ),



              Positioned(
                left: 135,
                top: 715,
                child: SizedBox(
                  width: 131,
                  height: 38,
                  child: Text(
                    'Confirm',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
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

              //Normal member section
              Positioned(
                left: 125,
                top: 199,
                child: Container(
                  width: 154,
                  height: 37,
                  decoration: ShapeDecoration(
                    color: Color(0xFF908E8E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 145,
                top: 222,
                child: Text(
                  'Normal Member',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),

              // Contact Us
              Positioned(
                left: 80,
                top: 770,
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
                child: TextField(
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
