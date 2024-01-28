import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:usmfoodsaver/Membership%20Module/HomePage/HomePage.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/fail.dart';
import 'package:usmfoodsaver/Reward%20System%20Module/reward_home.dart';
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
        home: HomePage());
  }
}
