import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/invite.dart';
import 'package:flutter/cupertino.dart';

class ReferFriends extends StatelessWidget {
  TextEditingController inviteCodeController = TextEditingController();

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return InviteFriends();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Container(
          width: 390,
          height: 850,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
          child: Stack(
            children: [
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
                left: -2,
                top: 590,
                child: Container(
                  width: 392,
                  height: 260,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 392,
                          height: 260,
                          decoration: BoxDecoration(color: Colors.white),
                        ),
                      ),
                      Positioned(
                        left: 20.91,
                        top: 120.43,
                        child: Container(
                          width: 350.19,
                          height: 41.49,
                          decoration: ShapeDecoration(
                            color: Color(0xFF22BAB8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 144.26,
                        top: 132.41,
                        child: SizedBox(
                          width: 105.58,
                          height: 19.36,
                          child: ElevatedButton(
                            onPressed: () {
                              // Show a Dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Invite code recorded!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Confirm',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Space Grotesk',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Positioned(
                      //   left: 20.91,
                      //   top: 43.33,
                      //   child: SizedBox(
                      //     width: 187.11,
                      //     height: 19.36,
                      //     child: Text(
                      //       'Enter the Invite Code',
                      //       style: TextStyle(
                      //         color: Color(0xFF242E42),
                      //         fontSize: 17,
                      //         fontFamily: 'Space Grotesk',
                      //         fontWeight: FontWeight.w300,
                      //         height: 0,
                      //         letterSpacing: 0.41,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      CupertinoTextField(
                        placeholder: 'Enter Invite Code',
                        controller: inviteCodeController,
                        keyboardType: TextInputType.text,
                        obscureText: false, // Set to true if it's a password
                        padding: EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0.31,
                top: 89,
                child: Container(
                  width: 389.69,
                  height: 501,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 389.69,
                          height: 501,
                          decoration: BoxDecoration(color: Color(0xFFF1BA4E)),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 389.69,
                          height: 501,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 389.69,
                                  height: 501,
                                  decoration:
                                      BoxDecoration(color: Color(0xFFE5FFFC)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16.69,
                        top: 368.74,
                        child: SizedBox(
                          width: 352.28,
                          height: 65.70,
                          child: Text(
                            'Refer Friends\nto help them get more points!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF22BAB8),
                              fontSize: 20,
                              fontFamily: 'Space Grotesk',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              letterSpacing: 0.36,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 125,
                top: 55,
                child: Text(
                  'Refer Friends',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Space Grotesk',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 43,
                child: GestureDetector(
                  onTap: () {
                    navigateNextPage(context);
                  },
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
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 150,
                child: Container(
                  width: 310,
                  height: 285,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/images/reward/invite.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
