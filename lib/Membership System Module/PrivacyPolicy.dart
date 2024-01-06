import 'package:flutter/material.dart';
import 'HomePage.dart';

class Privacypolicy extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 390,
            height: 925,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
            child: Stack(
              children: [
                Positioned(
                  left: 12,
                  top: 65,
                  child: SizedBox(
                    width: 365,
                    height: 1123,
                    child: Text(
                      'Last updated: December 12, 2023\nEffective date: December 12,2023\nWelcome to the USM FoodSaver App\'s Privacy Policy. This document outlines how we collect, use, and safeguard your personal information. By using our application, you consent to the practices described herein.\n\n1. Information Collection\nWe collect your name, email, and profile info when you use the app. Details about surplus food listings and device information (like device type and operating system) may also be collected.\n\n2. How We Use Your Information\nWe use your info to help with buying and selling surplus food, send notifications, improve the app, and respond to your inquiries.\n\n3. Information Sharing\nYour surplus food listings are shared with potential buyers. We may disclose info if required by law.\n\n4. Data Security\nWe take measures to protect your info, but no internet transmission is 100% secure.\n\n5. User Controls\nYou can review, update, or delete your info and adjust notification preferences in the app settings.\n\n6. Third-Party Services\nWe aren\'t responsible for the privacy practices of third-party websites linked in the app.\n\n7. Changes to Privacy Policy\nWe may update the privacy policy and you\'ll be notified. Continued use of the app means you accept the changes.\n\n8. Contact Us\nFor questions or concerns, reach out to us at \n\n',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFFFC80CA)),
                  ),
                ),
                Positioned(
                  left: 85,
                  top: 10,
                  child: SizedBox(
                    width: 230,
                    height: 40,
                    child: Text(
                      'Privacy Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                // Back button
                Positioned(
                  left: 0,
                  top: 25,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(-1.57),
                      child: Container(
                        width: 24,
                        height: 23,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: StarBorder.polygon(sides: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 862,
                  child: SizedBox(
                    width: 235,
                    height: 30,
                    child: Text(
                      'usmfoodsaver@gmail.com',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFF1C4BF2),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
