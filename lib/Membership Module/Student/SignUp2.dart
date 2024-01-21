import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ndialog/ndialog.dart';
import 'package:usmfoodsaver/Booking%20&%20Engagement%20Module/Menu.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/HomepageStaff.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final StudentName = TextEditingController();
  final MatricNo = TextEditingController();
  final StudentEmail = TextEditingController();
  final Password = TextEditingController();
  final Confirm = TextEditingController();

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }

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
              controller: StudentName,
              decoration: const InputDecoration(
                hintText: 'FullName',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: MatricNo,
              decoration: const InputDecoration(
                hintText: 'MatricNo.',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: StudentEmail,
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: Password,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: Confirm,
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
                  final fullName = StudentName.text.trim();
                  final matricNo = MatricNo.text.trim();
                  final email = StudentEmail.text.trim();
                  final password = Password.text.trim();
                  final confirmPass = Confirm.text.trim();

                  if (fullName.isEmpty ||
                      matricNo.isEmpty ||
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
                      Map<String, String> StudentProfile = {
                        'fullName': fullName,
                        'matricNo': matricNo,
                        'email': email,
                        'uid': uid,
                      };

                      DatabaseReference userRef = FirebaseDatabase.instance.ref().child('Student').child(uid).child('Student Info');

                      await userRef.child(uid).set(StudentProfile);

                      Fluttertoast.showToast(msg: 'Success');

                      // Navigate to the next screen
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomepageStaff()),
                      );
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
