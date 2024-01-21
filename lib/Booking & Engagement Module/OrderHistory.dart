import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart';
import 'GiveFeedBack1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Menu.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  User? user;
  late DatabaseReference HistorydbRef;

  @override
  void initState() {
    super.initState();

    user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      HistorydbRef = FirebaseDatabase.instance.reference().child('Student').child(user!.uid).child('OrderHistory');
    }
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Menu();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Normalprofile();
    }));
  }

  Widget orderItem({required Map OrderHistory}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 390,
          height: 128,
          decoration: BoxDecoration(
            color: Color(0xFFFFCD92),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side - Food photo
              Container(
                width: 108,
                height: 108,
                margin: EdgeInsets.only(left: 13, top: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('lib/assets/images/food.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Right side - Text information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    Text(
                      '${OrderHistory!['Store Name'] ?? 'N/A'}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'RM ${OrderHistory!['Price(RM)'] ?? 'N/A'}',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '${OrderHistory!['Order DateTime'] ?? 'N/A'}',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.42),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

          // Rate button at the bottom-right corner
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => GiveFeedBack1(OrderHistorykey: OrderHistory['key'])),
                  );
                },
                color: Color(0xFF9ADBBF),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.zero,
                minWidth: 60,
                height: 40,
                child: Text(
                  'Rate',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 777,
        color: Color(0xFFE5FFFC), // Frame background color
        child: Column(
          children: [
            Container(
              width: 390,
              height: 50,
              color: Color(0xFF9ADBBF),
              child: Stack(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          /*Navigator.of(context)
                              .pop(); // Navigate to previous page*/
                          navigateNextPage3(context);
                        },
                        icon: Icon(Icons.arrow_back, size: 30,),
                        color: Colors.black,
                      ),
                      SizedBox(width: 10), // Adjust this width to suit spacing
                    ],
                  ),
                  Center(
                    child: Text(
                      'My History',
                      style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 0,
                    child: IconButton(
                      onPressed: () {
                        navigateNextPage2(context);
                      },
                      icon: Icon(Icons.food_bank, size: 30),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FirebaseAnimatedList(
                  query: HistorydbRef,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map OrderHistory = snapshot.value as Map;
                    OrderHistory['key'] = snapshot.key;

                    return orderItem(OrderHistory: OrderHistory);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}