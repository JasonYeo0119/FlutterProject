import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ndialog/ndialog.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({Key? key}) : super(key: key);

  @override
  _SignUp_ScreenState createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  var fullNameController = TextEditingController();
  var addressController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Please'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: fullNameController,
              decoration: const InputDecoration(
                hintText: 'FullName',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: addressController,
              decoration: const InputDecoration(
                hintText: 'Restaurant Address',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: confirmController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Confirm Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  var fullName = fullNameController.text.trim();
                  var address = addressController.text.trim();
                  var email = emailController.text.trim();
                  var password = passwordController.text.trim();
                  var confirmPass = confirmController.text.trim();

                  if (fullName.isEmpty ||
                      address.isEmpty ||
                      email.isEmpty ||
                      password.isEmpty ||
                      confirmPass.isEmpty) {
                    // show error toast

                    Fluttertoast.showToast(msg: 'Please fill all fields');
                    return;
                  }

                  if (password.length < 6) {
                    // show error toast
                    Fluttertoast.showToast(
                        msg:
                        'Weak Password, at least 6 characters are required');

                    return;
                  }

                  if (password != confirmPass) {
                    // show error toast
                    Fluttertoast.showToast(msg: 'Passwords do not match');

                    return;
                  }

                  // request to firebase auth
                  ProgressDialog progressDialog = ProgressDialog(
                    context,
                    title: const  Text('Signing Up'),
                    message: const Text('Please wait'),
                  );

                  progressDialog.show();
                  try {
                    FirebaseAuth auth = FirebaseAuth.instance;

                    UserCredential userCredential =
                    await auth.createUserWithEmailAndPassword(
                        email: email, password: password);

                    if (userCredential.user != null) {

                      // store user information in Realtime database
                      String uid = userCredential.user!.uid;

                      // Create a Map to store user information
                      Map<String, String> Profile = {
                        'fullName': fullName,
                        'address': address,
                        'email': email,
                        'uid': uid,
                      };

                      DatabaseReference userRef = FirebaseDatabase.instance.reference().child('Staff').child(uid).child('Staff Info');

                      userRef.child(uid).set(Profile);

                      Fluttertoast.showToast(msg: 'Success');

                      Navigator.of(context).pop();
                    } else {
                      Fluttertoast.showToast(msg: 'Failed');
                    }

                    progressDialog.dismiss();

                  } on FirebaseAuthException catch (e) {
                    progressDialog.dismiss();
                    if (e.code == 'email-already-in-use') {
                      Fluttertoast.showToast(msg: 'Email is already in Use');
                    } else if (e.code == 'weak-password') {
                      Fluttertoast.showToast(msg: 'Password is weak');
                    }
                  } catch (e) {
                    progressDialog.dismiss();
                    Fluttertoast.showToast(msg: 'Something went wrong');
                  }
                },
                child: const Text('Sign Up')),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
