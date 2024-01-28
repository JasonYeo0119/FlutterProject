import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Booking%20&%20Engagement%20Module/Menu.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/HomepageStaff.dart';
import 'package:usmfoodsaver/Membership%20Module/ResetPassword/reset_password.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/student_signup.dart';
import 'package:usmfoodsaver/Membership%20Module/utils/color_utils.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';

class StudentSignIn extends StatefulWidget {
  const StudentSignIn({Key? key}) : super(key: key);

  @override
  _StudentSignInState createState() => _StudentSignInState();
}

class _StudentSignInState extends State<StudentSignIn> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 777,
        color: hexStringToColor("E5FFFC"),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                logoWidget("lib/assets/images/USM FoodSaver Logo2.png"),
                Text(
                  'Sign In \n Student Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFB9A9A),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30, // Adjusted the height
                ),
                reusableTextField("Enter User Email", Icons.person_outline,
                    false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
                    );
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");

                    // Check for specific error codes
                    if (error is FirebaseAuthException) {
                      // Other errors, show a generic validation message
                      showValidationMessage(
                          context, 'Sign-in failed. Please try again.');
                    }
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account?",
          style: TextStyle(color: Color(0xFFFB9A9A)),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StudentSignUp()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(
                color: Color(0xFFFB9A9A), fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Color(0xFF6C0909)),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
}
