import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/invite.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/voucher.dart';
//import 'package:usmfoodsaver/Reward%20System%20Module/services/FirestoreDatabase.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RewardSystem extends StatefulWidget {
  // const RewardSystem({Key? key, required this.Profilekey}) : super(key: key);
  // final String Profilekey;

  @override
  State<RewardSystem> createState() => _RewardSystem();
}

class _RewardSystem extends State<RewardSystem> {
  final pointsController = TextEditingController();
  User? user;
  late DatabaseReference userRef;
  int executionCounter = 0;

  @override
  void initState() {
    super.initState();

    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      userRef = FirebaseDatabase.instance
          .reference()
          .child('Student')
          .child(user!.uid)
          .child('Student Info');
    }
    getPointsData();
  }

  void getPointsData() async {
    DataSnapshot snapshot = await userRef.child('points').get();
    dynamic pointsData = snapshot.value;
    if (pointsData != null) {
      setState(() {
        pointsController.text = pointsData.toString();
      });
    }
  }

  void incrementPoints() async {
    if (executionCounter < 3) {
      // Retrieve current points value
      int currentPoints = int.parse(pointsController.text);
      // print(currentPoints);

      // Increment by 1
      int newPoints = currentPoints + 1;

      // Update the UI immediately
      setState(() {
        pointsController.text = newPoints.toString();
      });

      // Write the updated value back to the database
      userRef.child('points').set(newPoints).then((_) {
        // Success callback
        print('Points updated successfully!');
      }).catchError((error) {
        // Error callback
        print('Error updating points: $error');
        // Rollback the UI update in case of an error
        setState(() {
          pointsController.text = currentPoints.toString();
        });
      });
      executionCounter++;
    }
  }
  
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return VoucherPage();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return InviteFriends();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Normalprofile();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: SingleChildScrollView(
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
                  left: 7,
                  top: 121,
                  child: Container(
                    width: 374,
                    height: 350,
                    decoration: ShapeDecoration(
                      color: Color(0xFFFFCD92),
                      shape: OvalBorder(side: BorderSide(width: 1)),
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
                  left: 0,
                  top: 50,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFF9ADBBF)),
                  ),
                ),
                Positioned(
                  left: 27,
                  top: 525,
                  child: Container(
                    width: 480.81,
                    height: 88.31,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 230,
                            height: 88,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 16.06, left: 16.06, bottom: 25.24),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.03),
                                        bottomLeft: Radius.circular(8.03),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 32.11,
                                        height: 32.11,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.01),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 32.11,
                                              height: 32.33,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'lib/assets/images/reward/img_frame_2.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 14.05),
                                      Container(
                                        height: double.infinity,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 122.43,
                                                    child: Text(
                                                      'Strive Chocolate',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12.04,
                                                        fontFamily:
                                                            'Space Grotesk',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 4.01),
                                                  Text(
                                                    'Ends on 31 Dec 2022',
                                                    style: TextStyle(
                                                      color: Color(0xFF8D8D8D),
                                                      fontSize: 10.04,
                                                      fontFamily:
                                                          'Space Grotesk',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Container(
                                //   width: 45.16,
                                //   height: 88.31,
                                //   decoration: BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(
                                //           'lib/assets/images/reward/img_frame_2.png'),
                                //       fit: BoxFit.fill,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 231,
                          top: 0,
                          child: Container(
                            width: 229.81,
                            height: 88.31,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 184.65,
                                  height: 88.31,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8.03),
                                        bottomLeft: Radius.circular(8.03),
                                      ),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 16.06,
                                        top: 16.06,
                                        child: Container(
                                          width: 32.11,
                                          height: 32.11,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.01),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: double.infinity,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: 32.11,
                                                        height: 32.33,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'lib/assets/images/reward/uncle_hooi.png'),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 62.22,
                                        top: 16.06,
                                        child: Text(
                                          'Uncle Hooi\'s Cafe',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.04,
                                            fontFamily: 'Space Grotesk',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 62.22,
                                        top: 35.12,
                                        child: Text(
                                          'Ends on 31 Dec 2022',
                                          style: TextStyle(
                                            color: Color(0xFF8D8D8D),
                                            fontSize: 10.04,
                                            fontFamily: 'Space Grotesk',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Container(
                                //   width: 45.16,
                                //   height: 88.31,
                                //   decoration: BoxDecoration(
                                //     image: DecorationImage(
                                //       image: AssetImage(
                                //           'lib/assets/images/reward/img_oval_2.png'),
                                //       fit: BoxFit.fill,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 80,
                  top: 222,
                  child: SizedBox(
                    width: 249,
                    height: 118,
                    child: Text(
                      '${pointsController.text}',
                      style: TextStyle(
                        color: Color(0xCE1DB9CF),
                        fontSize: 96,
                        fontFamily: 'Space Grotesk',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 124.37,
                  top: 352,
                  child: Container(
                    width: 142.50,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.06, vertical: 12.04),
                    decoration: ShapeDecoration(
                      color: Color(0xFF6BA6FE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.03),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            incrementPoints();
                          },
                          child: Text(
                            'Check-in',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Space Grotesk',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 148.38,
                  top: 198,
                  child: Transform(
                    transform: Matrix4.identity()
                      ..translate(0.0, 0.0)
                      ..rotateZ(0.02),
                    child: Text(
                      'Total Points',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xCE1DB9CF),
                        fontSize: 16.06,
                        fontFamily: 'Space Grotesk',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 316,
                  top: 491,
                  child: TextButton(
                      child: Text(
                        'See all',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.05,
                          fontFamily: 'Space Grotesk',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      onPressed: () {
                        navigateNextPage(context);
                      }),
                ),
                Positioned(
                  left: 27,
                  top: 493,
                  child: Text(
                    'Get rewarded',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.06,
                      fontFamily: 'Space Grotesk',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 27,
                  top: 633,
                  child: Text(
                    'Earn more points',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.06,
                      fontFamily: 'Space Grotesk',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 145,
                  top: 58,
                  child: Text(
                    'Rewards',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Space Grotesk',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  top: 659,
                  child: Container(
                    width: 303,
                    height: 108,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFF52C55)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 52,
                  top: 668,
                  child: Container(
                    width: 107,
                    height: 92,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/reward/food.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 165,
                  top: 685,
                  child: ElevatedButton(
                    child: Text(
                      'Invite friends ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Space Grotesk',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    onPressed: () {
                      navigateNextPage2(context);
                    },
                  ),
                ),
                Positioned(
                  left: 165,
                  top: 716,
                  child: SizedBox(
                    width: 133,
                    height: 23,
                    child: Text(
                      'Each successful invitation will get 5 points',
                      style: TextStyle(
                        color: Color(0xFF8D8D8D),
                        fontSize: 10,
                        fontFamily: 'Space Grotesk',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 207.16,
                  top: 781,
                  child: Container(
                    width: 109.31,
                    height: 1.26,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.06, vertical: 12.04),
                    decoration: ShapeDecoration(
                      color: Color(0xFF6BA6FE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.03),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ' invite code',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.05,
                            fontFamily: 'Space Grotesk',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 2,
                  top: 60,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage3(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    )
    )
    );
  }
}
