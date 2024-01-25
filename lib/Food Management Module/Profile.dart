import "package:flutter/material.dart";
import 'package:firebase_auth/firebase_auth.dart';
import "package:usmfoodsaver/Food%20Management%20Module/EditProfile.dart";
import "HomepageStaff.dart";
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  User? user;
  late Query userRef;

  @override
  void initState() {
    super.initState();

    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userRef = FirebaseDatabase.instance.reference().child('Staff').child(user!.uid).child('Staff Info');
    }
  }


  @override
  State<Profile> createState() => _ProfileState();

  @override
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }

  /*void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditProfile(Profilekey: '',);
    }));
  }*/

  Widget listItem({required Map Profile}) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Card(
          color: Color(0xFFB2EBF2),
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Adding rounded corners
          ),
          elevation: 0,
          child: SizedBox(
            width: screenWidth - 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name:\n\n${Profile['fullName']}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
        ),
        Card(
          color: Color(0xFFB2EBF2),
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Adding rounded corners
          ),
          elevation: 0,
          child: SizedBox(
            width: screenWidth - 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PhoneNo:\n\n${Profile['phone']}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
        ),
        ),
        Card(
          color: Color(0xFFB2EBF2),
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Adding rounded corners
          ),
          elevation: 0,
          child: SizedBox(
            width: screenWidth - 20,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Eateria Address:\n\n${Profile['address']}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          color: Color(0xFFB2EBF2),
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Adding rounded corners
          ),
          elevation: 0,
          child: SizedBox(
            width: screenWidth - 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email:\n\n${Profile['email']}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ),
          ),
        ),
       Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) =>
                          EditProfile(Profilekey: Profile['key'])),
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
                    'Edit',
                    style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
             ],
          ),
        ),
      ],
    );
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
                color: Color(0x99F21E37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                        onPressed: () {
                          navigateNextPage(context);
                        },
                        icon: Icon(Icons.cancel_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text(
                        'Staff Profile',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              // Add the Image widget for the chef.png
              Image.asset(
                'lib/assets/images/chef.png', // Set the correct image path
                width: 200, // Set the width as needed
                height: 200, // Set the height as needed
                fit: BoxFit.contain, // Adjust the fit as needed
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FirebaseAnimatedList(
                    query: userRef,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot,
                        Animation<double> animation, int index) {
                      Map Profile = snapshot.value as Map;
                      Profile['key'] = snapshot.key;
                      return listItem(Profile: Profile);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }