import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Booking%20&%20Engagement%20Module/Menu.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/HomePage.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart';
import 'package:usmfoodsaver/Membership%20Module/utils/color_utils.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';
<<<<<<< HEAD
=======
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ndialog/ndialog.dart';

>>>>>>> 124b172a15667bbf54d10bc04155bc7e190a8ae9

class StudentSignUp extends StatefulWidget {
  const StudentSignUp({Key? key}) : super(key: key);

  @override
  _StudentSignUpState createState() => _StudentSignUpState();
}

class _StudentSignUpState extends State<StudentSignUp> {
  final StudentName = TextEditingController();
  final MatricNo = TextEditingController();
  final StudentEmail = TextEditingController();
  final Password = TextEditingController();
  final Confirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
<<<<<<< HEAD
        width: 390,
        height: 777,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("FFFCCE"),
          hexStringToColor("FFBC57"),
          hexStringToColor("FF5757"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                logoWidget("lib/assets/images/Logo Remove Background.png"),
=======
          width: 390,
          height: 777,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("FFFCCE"),
            hexStringToColor("FFBC57"),
            hexStringToColor("FF5757"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0), // Reduced top padding to 20
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                    logoWidget2("lib/assets/images/Logo Remove Background.png"),
>>>>>>> 124b172a15667bbf54d10bc04155bc7e190a8ae9
                Text(
                  'Sign Up \n Student Account',
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
<<<<<<< HEAD
                reusableTextField2("Enter User Email", Icons.person_outline,
                    false, _emailTextController),
=======
                reusableTextField2("Enter User Name", Icons.person_outline, false,
                    StudentName),
>>>>>>> 124b172a15667bbf54d10bc04155bc7e190a8ae9
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter Matric No.", Icons.numbers_outlined, false,
                    MatricNo),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter User Email", Icons.email, false,
                    StudentEmail),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter Password", Icons.lock_open_outlined, true,
                    Password),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Confirm Password", Icons.lock, true,
                    Confirm),
                const SizedBox(
                  height: 20,
                ),

                firebaseUIButton(context, "Sign Up", () async {
                  String fullName = StudentName.text;
                  String matricNo = MatricNo.text;
                  String email = StudentEmail.text;
                  String password = Password.text;
                  String confirmPass = Confirm.text;

                  if (fullName.isEmpty ||
                      matricNo.isEmpty ||
                      email.isEmpty ||
                      password.isEmpty ||
                      confirmPass.isEmpty) {
                    // Show a validation message inside the UI
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Validation Error'),
<<<<<<< HEAD
                          content:
                              Text('Please enter both email and password.'),
=======
                          content: Text('Please fill all fields.'),
>>>>>>> 124b172a15667bbf54d10bc04155bc7e190a8ae9
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
<<<<<<< HEAD
                  String registrationStatus =
                      ''; // Declare a variable to hold the registration status
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((userCredential) async {
                    // Successfully created a new account

                    // Store user information in Realtime Database
                    /* DatabaseReference userRef =
                    FirebaseDatabase.instance.ref().child('Students').child('NormalPlan');
=======

                  if (password.length < 6) {
                    // Show error dialog
                    showValidationMessage(context, 'Weak Password, at least 6 characters are required');
                    return;
                  }

                  if (password != confirmPass) {
                    // Show error dialog
                    showValidationMessage(context, 'Passwords do not match');
                    return;
                  }
                  // Show progress dialog
                  ProgressDialog progressDialog = ProgressDialog(
                    context,
                    title: const Text('Signing Up'),
                    message: const Text('Please wait'),
                  );

                  progressDialog.show();

                  String registrationStatus = ''; // Declare a variable to hold the registration status
                  FirebaseAuth auth = FirebaseAuth.instance;

                  try {
                    UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
>>>>>>> 124b172a15667bbf54d10bc04155bc7e190a8ae9

                    if (userCredential.user != null) {
                      // Store user information in Realtime database
                      String uid = userCredential.user!.uid;

                      // Create a Map to store user information
                      Map<String, String> StudentProfile = {
                        'fullName': fullName,
                        'matricNo': matricNo,
                        'email': email,
                        'uid': uid,
                      };

                      DatabaseReference userRef = FirebaseDatabase.instance.ref().child('Student').child(uid).child('Student Info');

                      userRef.child(uid).set(StudentProfile);

                      // Successfully created a new account
                      setState(() {
                        registrationStatus = "Account successfully created!";
                      });

                      // Navigate to the home screen or perform any other actions
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Normalprofile()));
                    }
                  } catch (error) {
                    setState(() {
                      registrationStatus = ''; // Reset the registration status on error
                    });
<<<<<<< HEAD
                    // Navigate to the home screen or perform any other actions
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateUserProfile()),
                    );
                  }).onError((error, stackTrace) {
                    setState(() {
                      registrationStatus =
                          ''; // Reset the registration status on error
                    });

                    print("Error ${error.toString()}");
                    if (error is FirebaseAuthException &&
                        error.code == 'email-already-in-use') {
                      showValidationMessage(context,
                          'The email address is already in use.'); // Email is already in use, show a validation message
                    }
                  });
=======

                    print("Error ${error.toString()}");
                    if (error is FirebaseAuthException && error.code == 'email-already-in-use') {
                      showValidationMessage(context, 'The email address is already in use.');// Email is already in use, show a validation message
                  } else if (error is FirebaseAuthException && error.code == 'weak-password'){
                     showValidationMessage(context, 'The email address is already in use.');}
                }
>>>>>>> 124b172a15667bbf54d10bc04155bc7e190a8ae9
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
