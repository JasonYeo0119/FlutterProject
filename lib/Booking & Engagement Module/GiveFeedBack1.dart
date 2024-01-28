import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart';
import 'GiveFeedback2.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'UserProfile.dart';

class GiveFeedBack1 extends StatefulWidget {

  const GiveFeedBack1({Key? key, required this.OrderHistorykey}) : super(key: key);
  final String OrderHistorykey;

  @override
  State<GiveFeedBack1> createState() => _GiveFeedBack1State();
}

class _GiveFeedBack1State extends State<GiveFeedBack1> {
  final  comment = TextEditingController();
  late DatabaseReference dbRef;
  late DatabaseReference FeedbackdbRef;
  Map<String, dynamic>? OrderHistory;
  Map<String, dynamic>? Feedback;
  int selectedStars = 0; // Initially, no stars are selected
  User? user;

  @override
  void initState() {
    super.initState();
    FeedbackdbRef = FirebaseDatabase.instance.ref().child('Feedback');
    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      dbRef = FirebaseDatabase.instance.ref().child('Student').child(user!.uid).child('OrderHistory');
    }
    getHistoryData();
  }

  void getHistoryData() async {
    DataSnapshot snapshot = await dbRef.child(widget.OrderHistorykey).get();
    setState(() {
      OrderHistory = snapshot.value as Map<String, dynamic>;
    });
  }

  void selectStar(int stars) {
    setState(() {
      selectedStars = stars;
    });
  }

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Givefeedback2();
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Normalprofile();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 777,
        color: Color(0xFFE5FFFC),
        child: Column(
          children: [
            Container(
              width: 390,
              height: 50,
              color: Color(0xFF9ADBBF),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Feedback',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Two photos
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  left: 30,
                  top: 40,
                  child: Image.asset('lib/assets/images/food.jpg', width: 150, height: 150),
                ),
                Positioned(
                  left: 180,
                  top: 40,
                  child: Image.asset('lib/assets/images/FajarLocation.png', width: 150, height: 150),
                ),
              ],
            ),

            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 10), // Adjusted padding here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${OrderHistory!['Food Name'] ?? 'N/A'}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${OrderHistory!['Store Name'] ?? 'N/A'}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Rating section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Are you satisfied with the food?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: List.generate(5, (index) {
                    return GestureDetector(
                      onTap: () {
                        selectStar(index + 1);
                      },
                      child: Icon(
                        index < selectedStars ? Icons.star : Icons.star_border,
                        size: 40,
                        color: Color(0xFFFFF878),
                      ),
                    );
                  }
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Comment section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Write your comment here!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 350,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: comment,
                      keyboardType: TextInputType.text,
                      maxLines: null,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type your comment here',
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30), // Add space between the comment section and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Cancel button
                MaterialButton(
                  onPressed: () {
                   navigateNextPage2(context);
                  },
                  color: Color(0xFFDB9A9A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                  minWidth: 163,
                  height: 64,
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 20), // Add space between buttons
                // Send button
                MaterialButton(
                  onPressed: () {
                    Map<String, dynamic> Feedback = {
                      'Star Rating': selectedStars,
                      'Comment': comment.text,
                      'Food Name': OrderHistory!['Food Name'] ?? 'N/A',
                      'Store Name': OrderHistory!['Store Name'] ?? 'N/A',
                      'Order DateTime': OrderHistory!['Order DateTime'] ?? 'N/A',
                      // Add other details as needed based on your FoodMenu data
                    };
                    // Navigate to the next screen if needed
                    FeedbackdbRef.push().set(Feedback);
                    navigateNextPage(context);
                  },
                  color: Color(0xFF9ADBBF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 4,
                  minWidth: 163,
                  height: 64,
                  child: Text(
                    'Send',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
