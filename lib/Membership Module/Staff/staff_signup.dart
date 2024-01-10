import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/Profile.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/SignupProfile.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';
import 'package:usmfoodsaver/Membership%20Module/utils/color_utils.dart';


class StaffSignUp extends StatefulWidget {
  const StaffSignUp({Key? key}) : super(key: key);

  @override
  _StaffSignUpState createState() => _StaffSignUpState();
}

class _StaffSignUpState extends State<StaffSignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 390,
          height: 777,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("FFF27E"),
            hexStringToColor("72C691"),
            hexStringToColor("1D593C"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.1, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                    logoWidget("lib/assets/images/Logo Remove Background.png"),
                Text(
                  'Sign Up \n Staff Account',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter User Email", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Sign Up", () {
                  String email = _emailTextController.text;
                  String password = _passwordTextController.text;

                  if (email.isEmpty || password.isEmpty) {
                    // Show a validation message inside the UI
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Validation Error'),
                          content: Text('Please enter both email and password.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(); // Close the dialog
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                    return; // Stop further execution if fields are empty
                  }
                  String registrationStatus = ''; // Declare a variable to hold the registration status
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    // Successfully created a new account
                    setState(() {
                      registrationStatus = "Account successfully created!";
                    });
                    // Navigate to the home screen or perform any other actions
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupProfile()),
                    );
                    })
                        .onError((error, stackTrace) {
                                    setState(() {
                                      registrationStatus =
                                      ''; // Reset the registration status on error
                                    });

                    print("Error ${error.toString()}");
                    if (error is FirebaseAuthException && error.code == 'email-already-in-use') {
                      showValidationMessage(context, 'The email address is already in use.');// Email is already in use, show a validation message
                    }
                  });
                })
              ],
            ),
          ),
          ),
       ),
      );
  }
}
