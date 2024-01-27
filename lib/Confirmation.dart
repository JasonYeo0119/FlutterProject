import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'Menu.dart';
import 'OrderStart.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key, required this.FoodMenukey}) : super(key: key);
  final String FoodMenukey;

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  late DatabaseReference dbRef;
  Map<String, dynamic>? FoodMenu;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('FoodMenu');
    getMenuData();
  }

  void getMenuData() async {
    DataSnapshot snapshot = await dbRef.child(widget.FoodMenukey).get();
    setState(() {
      FoodMenu = snapshot.value as Map<String, dynamic>;
    });
  }

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Menu();
    }));
  }
  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Menu();
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50, // Height of the app bar
              color: Color(0xFF9ADBBF),
              alignment: Alignment.center, // Align contents center
              child: Text(
                'Order Confirmation',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Please make payment when you pick up in store.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 16),
              child: Text(
                'After 40 minutes, your order will be canceled. Please pay attention to your time!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Details:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        if (FoodMenu != null && FoodMenu!.isNotEmpty) // Check if FoodMenu is not null and has content
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Food Name: ${FoodMenu!['Food Name'] ?? 'N/A'}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Price: RM ${FoodMenu!['Price(RM)'] ?? 'N/A'}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              // Add other details here based on your FoodMenu data
                            ],
                          ),
                        if (FoodMenu == null || FoodMenu!.isEmpty) // Check if FoodMenu is null or empty
                          Center(
                            child: Text(
                              'No Food Details Available',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    navigateNextPage2(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFDB9A9A),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (FoodMenu != null && FoodMenu!['Quantity'] != null) {
                      int? currentQuantity = int.tryParse(FoodMenu!['Quantity'].toString());
                      if (currentQuantity != null && currentQuantity > 0) {
                        int newQuantity = currentQuantity - 1;
                        // Update the database with the new quantity
                        dbRef.child(widget.FoodMenukey).update({'Quantity': newQuantity.toString()})
                            .then((_) {
                          // Update the local state only if the database update was successful
                          setState(() {
                            FoodMenu!['Quantity'] = newQuantity.toString();
                            // Perform other operations if needed
                          });
                        })
                            .catchError((error) {
                          // Handle any errors that occur during the database update
                          print('Failed to update quantity: $error');
                        });
                      }
                    }
                    // Navigate to the next screen if needed
                    navigateNextPage(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9ADBBF),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
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
