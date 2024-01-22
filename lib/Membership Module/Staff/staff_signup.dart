import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/HomepageStaff.dart';
import 'package:usmfoodsaver/Membership%20Module/reusable_widget/reusable_widget.dart';
import 'package:usmfoodsaver/Membership%20Module/utils/color_utils.dart';
import 'package:ndialog/ndialog.dart';
import 'package:firebase_database/firebase_database.dart';

class StaffSignUp extends StatefulWidget {
  const StaffSignUp({Key? key}) : super(key: key);

  @override
  _StaffSignUpState createState() => _StaffSignUpState();
}

class _StaffSignUpState extends State<StaffSignUp> {
  var fullNameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();

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
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0), // Reduced top padding to 20
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                    logoWidget2("lib/assets/images/Logo Remove Background.png"),
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
                reusableTextField2("Enter User Name", Icons.person_outline, false,
                    fullNameController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter Contact Number", Icons.phone, false,
                    phoneController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter Restaurant Address", Icons.location_on_outlined, false,
                    addressController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter User Email", Icons.email, false,
                    emailController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Enter Password", Icons.lock_open_outlined, true,
                    passwordController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField2("Confirm Password", Icons.lock_outlined, true,
                    confirmController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Sign Up", () async {
                  var fullName = fullNameController.text.trim();
                  var phone = phoneController.text.trim();
                  var address = addressController.text.trim();
                  var email = emailController.text.trim();
                  var password = passwordController.text.trim();
                  var confirmPass = confirmController.text.trim();

                  if (fullName.isEmpty ||
                      phone.isEmpty ||
                      address.isEmpty ||
                      email.isEmpty ||
                      password.isEmpty ||
                      confirmPass.isEmpty) {
                    // Show a validation message inside the UI
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Validation Error'),
                          content: Text('Please fill all fields.'),
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

                  if (userCredential.user != null) {
                  // Store user information in Realtime database
                  String uid = userCredential.user!.uid;

                  // Create a Map to store user information
                  Map<String, String> Profile = {
                  'fullName': fullName,
                    'phone': phone,
                  'address': address,
                  'email': email,
                  'uid': uid,
                  };

                  DatabaseReference userRef = FirebaseDatabase.instance.ref().child('Staff').child(uid).child('Staff Info');

                  userRef.child(uid).set(Profile);

                  // Successfully created a new account
                  setState(() {
                  registrationStatus = "Account successfully created!";
                  });

                  // Navigate to the home screen or perform any other actions
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomepageStaff()));
                  }
                  } catch (error) {
                  setState(() {
                  registrationStatus = ''; // Reset the registration status on error
                  });

                  print("Error ${error.toString()}");
                  if (error is FirebaseAuthException && error.code == 'email-already-in-use') {
                  showValidationMessage(context, 'The email address is already in use.');// Email is already in use, show a validation message
                  } else if (error is FirebaseAuthException && error.code == 'weak-password'){
                  showValidationMessage(context, 'The email address is already in use.');}
                  }
                  })
              ],
            ),
          ),
          ),
       ),
      );
  }
}
