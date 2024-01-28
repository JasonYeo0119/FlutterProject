import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Booking%20&%20Engagement%20Module/ViewStaffProfile.dart';
import 'package:usmfoodsaver/Food%20Management%20Module/Profile.dart';
import 'Confirmation.dart';
import 'Menu.dart';

class OrderFood extends StatefulWidget {

  const OrderFood({Key? key, required this.FoodMenukey}) : super(key: key);
  final String FoodMenukey;

  @override
  State<OrderFood> createState() => _OrderFoodState();
}

class _OrderFoodState extends State<OrderFood> {
  late DatabaseReference dbRef;
  Map<String, dynamic>? FoodMenu; // To store the selected food details


  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('FoodMenu');
    getMenuData();
  }

  //edit
  void getMenuData() async {
    DataSnapshot snapshot = await dbRef.child(widget.FoodMenukey).get();
    setState(() {
      FoodMenu = snapshot.value as Map<String, dynamic>;

    });
  }

  @override
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Confirmation(FoodMenukey: widget.FoodMenukey); // Pass FoodMenukey to Confirmation
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return ViewStaffProfile();
    }));
  }

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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, size: 30,),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Spacer(),
                        Text(
                          'My Order',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
                    // time column
                    Positioned(
                      left: 0,
                      top: 0, // Adjust this top position to align below the top bar
                      child: Container(
                        width: 390,
                        height: 30, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: Color(0xFFFFCD92),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.info,
                              size: 13,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5), // Adjust the width between icon and text
                            Text(
                              'Your time collection is 40 minutes only',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // food pic
                    Positioned(
                      left: 60,
                      top: 40,
                      child: Image.asset('lib/assets/images/food.jpg'),
                      width: 120,
                      height: 120,
                    ),

                    // place pic
                    Positioned(
                      left: 180,
                      top: 40,
                      child: Image.asset('lib/assets/images/food.jpg'),
                      width: 120,
                      height: 120,
                    ),

                    Positioned(
                      left: 50,
                      top: 200,
                      child: Text(
                        '${FoodMenu?['Food Name']}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0.06,
                          letterSpacing: -0.50,
                        ),
                      ),
                    ),

                    Positioned(
                      left: 46,
                      top: 230,
                      child: Text(
                        'Remarks',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF121212),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    Positioned(
                      left: 45,
                      top: 250, // Adjust this top position as needed
                      child: Container(
                        width: 300,
                        height: 28,
                        decoration: BoxDecoration(color: Color(0xFFFFCD92)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '${FoodMenu?['Remarks']}',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 1.0, // Adjust the height as needed
                                letterSpacing: -0.50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 45,
                      top: 300,
                      child: Text(
                        'Cafeteria/Restaurant',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                          letterSpacing: -0.50,
                        ),
                      ),
                    ),

                    // Location column
                    Positioned(
                      left: 45,
                      top: 310, // Adjust top position as needed
                      child: Container(
                        width: 300,
                        height: 63,
                        decoration: BoxDecoration(color: Color(0xFFFFCD92)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                              child: Text(
                                '${FoodMenu?['Store Name']}',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: MaterialButton(
                                  onPressed: () {
                                    // Add your functionality here
                                    navigateNextPage2(context);
                                  },
                                  minWidth: 70,
                                  height: 38,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Color(0xFF9ADBBF),
                                  child: Text(
                                    'View',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
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

                    Positioned(
                      left: 45,
                      top: 395,
                      child: Text(
                        'Location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0.10,
                          letterSpacing: -0.50,
                        ),
                      ),
                    ),

                    Positioned(
                      left: 45,
                      top: 405,
                      child: SizedBox(
                        width: 331,
                        height: 48,
                        child: Text(
                          '${FoodMenu?['Address']}',
                          textAlign: TextAlign.left,
                          // Align the text in the center
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 1.4,
                            // Increase the height for multiline text
                            letterSpacing: -0.50,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 0,
                      bottom: 40,
                      child: Container(
                        width: 390,
                        height: 45, // Increase the height to accommodate the content
                        decoration: BoxDecoration(color: Color(0xFFFFCD92)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                'Total',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0.35,
                                  letterSpacing: -0.50,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                'RM ${FoodMenu?['Price(RM)']}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0.35,
                                  letterSpacing: -0.50,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // place order button
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          navigateNextPage(context);
                        },
                        child: Container(
                          width: 390,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF9ADBBF),
                          ),
                          child: Center(
                            child: Text(
                              'Place Order',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

