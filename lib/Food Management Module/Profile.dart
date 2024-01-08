import "package:flutter/material.dart";
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

  Query dbRef = FirebaseDatabase.instance.ref().child('Profile');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child(
      'Profile');

  @override
  State<Profile> createState() => _ProfileState();

  @override
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return EditProfile(Profilekey: '',);
    }));
  }

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
          elevation: 5,
          child: SizedBox(
            width: screenWidth - 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name:\n\n${Profile['Name']}',
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
          elevation: 5,
          child: SizedBox(
            width: screenWidth - 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address:\n\n${Profile['Address']}',
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
          elevation: 5,
          child: SizedBox(
            width: screenWidth - 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email:\n\n${Profile['Email']}',
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
          elevation: 5,
          child: SizedBox(
            width: screenWidth - 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password:\n\n${Profile['Password']}',
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
                    width: 50,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF01579B)!.withOpacity(0.8),
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    ),
                  ),
                  ),
                  ),
                  const SizedBox(width: 12),
                    // GestureDetector(  //delete button
                    // onTap: () {
                    // reference.child(Profile['key']).remove();
                    // },
                    // child: Icon(
                    // Icons.delete,
                    // color: Colors.red[700]!.withOpacity(0.5),
                    // ),
                    // ),
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
                color: Color(0xFF9ADBBF),
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
                      padding: const EdgeInsets.only(right: 130),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FirebaseAnimatedList(
                    query: dbRef,
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