import "package:flutter/material.dart";
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:usmfoodsaver/Booking%20&%20Engagement%20Module/Menu.dart';
import 'package:usmfoodsaver/Booking%20&%20Engagement%20Module/OrderHistory.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/HomePage.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/Premium/PremiumPlan.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/StudentEdit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/reward_home.dart';

class Normalprofile extends StatefulWidget {
  const Normalprofile({Key? key}) : super(key: key);

  @override
  State<Normalprofile> createState() => _NormalprofileState();
}

class _NormalprofileState extends State<Normalprofile> {
  User? user;
  late Query userRef;

  @override
  void initState() {
    super.initState();

    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userRef = FirebaseDatabase.instance.reference().child('Student').child(user!.uid).child('Student Info');
    }
  }
  @override
  State<Normalprofile> createState() => _NormalprofileState();

  @override

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Premiumplan();
    }));
  }

  /*void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return StudentEdit(StudentProfilekey: '',);
    }));
  }*/

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return OrderHistory();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return RewardSystem();
    }));
  }

  void navigateNextPage4(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Menu();
    }));
  }

  Widget listItem({required Map StudentProfile}) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            color: Color(0xFFFFCBCB),
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Name\t\t\t\t\t\t\t\t:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '${StudentProfile['fullName']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'MatricNo. :',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '${StudentProfile['matricNo']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        'Email\t\t\t\t\t\t\t\t\t:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '${StudentProfile['email']}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5), // Adjust the spacing as needed
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) =>
                        StudentEdit(StudentProfilekey: StudentProfile['key'])),
                  );
                },
                child: Container(
                  width: 90,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFBEB9A), // Adjust the color as needed
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
                    'Edit',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: 390,
        height: 930,
        color: Color(0xFFE5FFFC),
        child: Stack( // Wrap your content in a Stack
          children: [
            Column(
              children: [
                Container(
                  width: 390,
                  height: 50,
                  color: Color(0xFFFB9A9A),
                  child: Center(
                    child: Text(
                      'My Profile',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(height: 10), // Add a SizedBox for spacing
                // BoyGirl image
                Container(
                  width: 200, // Set the width as needed
                  height: 200, // Set the height as needed
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/boygirl.png'), // Set the correct image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Text indicating to click the normal member
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Click To See Our Premium Plan!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF392A75),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        // Arrow image
                          Image.asset(
                            'lib/assets/images/arrow.png', // Set the correct image path
                            width: 50, // Set the width as needed
                            height: 50, // Set the height as needed
                          ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Positioned(
                  left: 207,
                  top: 60,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 170,
                      height: 45,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFB9A9A),
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
                      child: Center(
                        child: Text(
                          'Normal Member',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: FirebaseAnimatedList(
                      query: userRef,
                      itemBuilder: (BuildContext context, DataSnapshot snapshot,
                          Animation<double> animation, int index) {
                        Map StudentProfile = snapshot.value as Map;
                        StudentProfile['key'] = snapshot.key;
                        return listItem(StudentProfile: StudentProfile);
                      },
                    ),
                  ),
                ),
              ],
            ),

            // Reward Coins Section
            Positioned(
              left: 30,
              top: 615,
              child: Container(
                width: 150,
                height: 70,
                decoration: ShapeDecoration(
                  color: Color(0xFFFFCD92),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Reward Coins',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5), // Add vertical spacing
                    Text(
                      '0 coins',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Order History Button
            Positioned(
              left: 200,
              top: 615,
              child: TextButton(
                onPressed: () {
                  navigateNextPage2(context);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
              child: Container(
                width: 160,
                height: 70,
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
                    ),
                  ],
                ),
                // Your content for Order History and Check your order
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Order History',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5), // Add vertical spacing
                    SizedBox(
                      width: 126,
                      child: Text(
                        'Check your order',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),

            // Rewards Centre Button
            Positioned(
              left: 30,
              top: 710,
              child: TextButton(
                onPressed: () {
                  navigateNextPage3(context);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 330,
                  height: 87,
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
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 12),
                      Text(
                        'Reward Centre',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10), // Add vertical spacing
                      SizedBox(
                        width: 322,
                        height: 35,
                        child: Text(
                          'Daily check-in and redeem your e-voucher',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Contact Us
            Positioned(
              left: 152,
              top: 875,
              child: InkWell(
                onTap: () {
                  launchEmail('usmfoodsaver@gmail.com');
                },
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
            ),

            // Logout Button
            Positioned(
              left: 163,
              top: 890,
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
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  'Log out',
                  style: TextStyle(
                    color: Color(0xFFF21C1C),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.09,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
            ),

            Positioned(
              right: 25,
              top: 3,
              child: Container(
                width: 40,
                height: 40,
                child: MaterialButton(
                  onPressed: () {
                    navigateNextPage4(context);
                  },
                  child: Icon(
                    Icons.food_bank,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }


}