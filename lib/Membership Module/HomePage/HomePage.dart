import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/Login.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/SignUp.dart';
import 'CustomerService.dart';
import 'PrivacyPolicy.dart';
import 'TermsofService.dart';

class HomePage extends StatelessWidget {
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Login();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Signup();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Customerservice();
    }));
  }

  void navigateNextPage4(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Termsofservice();
    }));
  }

  void navigateNextPage5(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Privacypolicy();
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
                left: 110,
                top: 610,
                child: SizedBox(
                  width: 192,
                  height: 53,
                  child: Text(
                    'Having Trouble Logging In?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 40,
                top: 689,
                child: SizedBox(
                  width: 189,
                  height: 24,
                  child: Text(
                    'Login means you agree to ',
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 110,
                top: 630,
                child: SizedBox(
                  width: 62,
                  height: 53,
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
              ),

              // Customer service button
              Positioned(
                  left: 165,
                  top: 628,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage3(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: SizedBox(
                      width: 133,
                      height: 24,
                      child: Text(
                        'Customer Service',
                        style: TextStyle(
                          color: Color(0xFF5094D3),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          height: 0.12,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                left: -53,
                top: 48,
                child: Image.asset('lib/assets/images/USM FoodSaver Logo.png'),
                width: 500,
                height: 433,
              ),

              //Sign up button
              Positioned(
                left: 36,
                top: 518,
                child: Container(
                  width: 315,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x4C95ADFE),
                        blurRadius: 22,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: TextButton(
                          onPressed: () {
                            navigateNextPage2(context);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 315,
                            height: 60,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-1.00, 0.08),
                                end: Alignment(1, -0.08),
                                colors: [Color(0xFF345436), Color(0xFFFFFBAF)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(99),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 120,
                        top: 35,
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0.05,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Login button
              Positioned(
                left: 36,
                top: 433,
                child: Container(
                  width: 315,
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x4C95ADFE),
                        blurRadius: 22,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: TextButton(
                          onPressed: () {
                            navigateNextPage(context);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 315,
                            height: 60,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(-1.00, 0.08),
                                end: Alignment(1, -0.08),
                                colors: [Color(0xFFFD7269), Color(0xFFFFFBA9)],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(99),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 128,
                        top: 35,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0.05,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0.07,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Terms of service button
              Positioned(
                left: 195,
                top: 686,
                child: TextButton(
                  onPressed: () {
                    navigateNextPage4(context);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: SizedBox(
                    width: 132,
                    height: 22,
                    child: Text(
                      'Terms of Service ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF6D6D6D),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.underline,
                        height: 0.12,
                      ),
                    ),
                  ),
                ),
              ),

              // Privacy policy button
              Positioned(
                  left: 148,
                  top: 706,
                  child: TextButton(
                    onPressed: () {
                      navigateNextPage5(context);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: SizedBox(
                      width: 102,
                      height: 24,
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Color(0xFF6D6D6D),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          height: 0.12,
                        ),
                      ),
                    ),
                  )),
              Positioned(
                left: 315,
                top: 689,
                child: SizedBox(
                  width: 38,
                  height: 18,
                  child: Text(
                    'and',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    )
        ),
    );
  }
}
