import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';
import 'HomePage.dart';

class Termsofservice extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomePage();
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
            height: 1580,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
            child: Stack(
              children: [
                Positioned(
                  left: 14,
                  top: 64,
                  child: SizedBox(
                    width: 365,
                    height: 1999,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'Last updated: December 12, 2023\nEffective date: December 12,2023\nWelcome to USM FoodSaver, provided by USM CAT 304 Group 2 project team.\n\n1. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Acceptance of Terms\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Welcome to the USM FoodSaver app. By accessing and using this application, you agree to abide by the following terms of service. If you do not agree with any part of these terms, we kindly ask that you refrain from using the application.\n\n2. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Purpose of the Application\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'The USM FoodSaver app is designed to foster a community-driven initiative for the responsible sale of surplus food items within the USM student community. Users are expected to utilize the app for its intended purpose and refrain from any unauthorized or inappropriate use.\n\n3. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Accuracy of Surplus Food Listings\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Those listing surplus food items are responsible for providing accurate and reliable information regarding the items offered. It is essential to ensure the safety and quality of the food being shared. The app, however, cannot guarantee the quality or safety of listed items.\n\n4. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Pricing and Transactions\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Sellers have the autonomy to set prices for surplus food items. Buyers are urged to carefully review prices and confirm purchases before proceeding. The USM FoodSaver app is not involved in financial transactions and bears no responsibility for disputes arising from them.\n\n5. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Notifications\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Users will receive timely notifications about available surplus food items based on their preferences. While we strive to provide a seamless experience, the app cannot be held responsible for any missed notifications or resulting consequences.\n\n6. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'Respecting user privacy is paramount. The app collects minimal personal information, adhering to a stringent privacy policy outlined separately.\n\n7. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Code of Conduct\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'We expect all users to engage respectfully and responsibly within the community. Harassment, discrimination, or any form of inappropriate behavior will not be tolerated.\n\n8. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Modification of Terms\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'The USM FoodSaver app reserves the right to modify these terms of service at any time. Users will be duly notified of any changes, and continued use of the app implies acceptance of the updated terms.\n\n9. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Termination\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'The app retains the right to terminate or suspend user accounts for violations of these terms or any other reason deemed necessary.\n\n10. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Disclaimer\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'The USM FoodSaver app is provided "as is" without any warranties. Users acknowledge that the app may not be free of errors, and the developers disclaim any liability for damages resulting from its use.\n\n11. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: 'Contact Information\n',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text:
                                'For inquiries or concerns regarding these terms, please reach out to us at ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 390,
                    height: 50,
                    decoration: BoxDecoration(color: Color(0xFF6BA6FE)),
                  ),
                ),
                Positioned(
                  left: 85,
                  top: 10,
                  child: SizedBox(
                    width: 230,
                    height: 40,
                    child: Text(
                      'Terms of Service',
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
                Positioned(
                  left: 14,
                  top: 1528,
                  child: InkWell(
                    onTap: () {
                      launchEmail('usmfoodsaver@gmail.com');
                    },
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
              ),
              ]
            ),
          ),
        ],
      ),
      )
    ),
    );
  }
}
