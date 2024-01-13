import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile2.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';

class CreateUserProfile2 extends StatefulWidget {
  final String userEmail; // Add this line to receive the email address

  const CreateUserProfile2({Key? key, required this.userEmail}) : super(key: key);

  @override
  State<CreateUserProfile2> createState() => _CreateUserProfileState();
}
class _CreateUserProfileState extends State<CreateUserProfile2> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController matricNoController = TextEditingController();
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.reference().child('Students').child('NormalPlan');
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
                    'My Profile',
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

              // Nickname
              Positioned(
                left: 215,
                top: 100,
                child: Container(
                  width: 165,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFCBCB), // FFCBCB
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Color(0xFF794832), // FF7D7D
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Nickname...',
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),



              /// Matric No
              Positioned(
                left: 215,
                top: 150,
                child: Container(
                  width: 165,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFCBCB), // FFCBCB
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: matricNoController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Color(0xFF794832), // FF7D7D
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'MatricNo...',
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),


              Positioned(
                left: 25,
                top: 282,
                child: Text(
                  widget.userEmail,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                    decoration: TextDecoration.none,
                    height: 0.06,
                    letterSpacing: -0.50,
                  ),
                ),
              ),



              Positioned(
                left: 20,
                top: 341,
                child: Container(
                  width: 148,
                  height: 92,
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
                top: 365,
                child: Text(
                  'Reward Coins',
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
                left: 20,
                top: 390,
                child: SizedBox(
                  width: 80,
                  child: Text(
                    '0 coins',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
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
                top: 346,
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
                top: 368,
                child: Text(
                  'Order History',
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
                left: 196,
                top: 390,
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
                top: 466,
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
                top: 490,
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
                top: 512,
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
                left: 25,
                top: 80,
                child: TextButton(
                  onPressed: () {
                    /*navigateNextPage2(context);*/
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 170,
                    height: 171,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: OvalBorder(),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 83,
                top: 135,
                child: Opacity(
                  opacity: 0.2,
                  child: Image.asset('lib/assets/images/upload symbol.png'),
                ),
                width: 50,
                height: 50,
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
                top: 593,
                child: TextButton(
                  onPressed: () {
                    Map<String, dynamic> profile = {
                      'UserID': widget.userEmail.replaceAll('.', ','),
                      'Useremail': widget.userEmail,
                      'dt': DateTime.now().millisecondsSinceEpoch,
                      'profilename': nameController.text,
                      'nickname': nameController.text,
                      'matricNo': matricNoController.text,
                    };
                    dbRef.child(widget.userEmail.replaceAll('.', ',')).set(profile);
                    // Navigate to the normal profile screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Normalprofile2(), // Replace NormalProfileScreen with your actual profile screen widget
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
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
                left: 130,
                top: 630,
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
                    /*navigateNextPage(context);*/
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
                left: 220,
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
                left: 239,
                top: 222,
                child: Text(
                  'Normal Member',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 75,
                top: 720,
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
    )
    )
    );
  }
}
