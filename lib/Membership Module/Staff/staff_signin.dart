import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/HomepageStaff.dart';
import 'package:usmfoodsaver/Membership%20Module/ResetPassword/reset_password.dart';
import 'package:usmfoodsaver/Membership%20Module/Staff/staff_signup.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';
import 'package:usmfoodsaver/Membership%20Module/utils/color_utils.dart';

class StaffSignIn extends StatefulWidget {
  const StaffSignIn({Key? key}) : super(key: key);

  @override
  _StaffSignInState createState() => _StaffSignInState();
}

class _StaffSignInState extends State<StaffSignIn> {
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
                  'Sign In \n Staff Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1ECFA5),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30, // Adjusted the height
                ),
                reusableTextField("Enter User Email", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  // Validate email and password
                  if (_emailTextController.text.isEmpty || _passwordTextController.text.isEmpty) {
                    // Show a validation message inside the UI
                    showValidationMessage(context, 'Please fill in both email and password.');
                    return; // Stop further execution if email or password is empty
                  }

                  // Perform Firebase authentication
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                      email: _emailTextController.text, password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomepageStaff()),
                    );
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");

                    // Check for specific error codes
                    if (error is FirebaseAuthException) {
                      if (error.code == 'user-not-found' || error.code == 'wrong-password') {
                        // Handle specific error codes for incorrect email/password
                        showValidationMessage(context, 'Invalid email or password. Please try again.');
                      } else {
                        // Other errors, show a generic validation message
                        showValidationMessage(context, 'Sign-in failed. Please check and re-enter your email and password.');
                      }
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
          "Don't have an account?",
          style: TextStyle(color: Color(0xFF1ECFA5), fontSize: 15), // Adjust the fontSize
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StaffSignUp()),
            );
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(
              color: Color(0xFF1ECFA5),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: Text(
          "Forgot Password?",
          style: TextStyle(
            color: Color(0xFF1D593C),
            fontWeight: FontWeight.w900, // Increase font weight
            fontSize: 15,
          ),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResetPassword()),
        ),
      ),
    );
  }

}
