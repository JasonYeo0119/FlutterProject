import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/DonePost.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/HomepageStaff.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/PostFood.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/Profile.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/RealtimeUpdate.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/RealtimeUpdate2.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/SignupProfile.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/ViewReviewAndRating.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/HomePage.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/Login.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/TermsofService.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/Premium/PremiumPlan.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/Premium/PremiumPrice.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/Premium/UploadSS.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/student_signin.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/reward_home.dart';
import 'Food Management Module/EditProfile.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: UploadSS()
    );
  }
}

