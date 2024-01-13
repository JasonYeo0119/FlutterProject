import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:usmfoodsaver/Membership%20Module/Student/NormalProfile.dart';
import 'Menu.dart';
import 'OrderFood.dart';
import 'ViewOrderFood.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OrderStart extends StatefulWidget {
  const OrderStart({Key? key, required this.FoodMenukey, required this.countdownController}) : super(key: key);
  final String FoodMenukey;
  final CountdownController countdownController;

  @override
  State<OrderStart> createState() => _OrderStartState();
}

enum PriceCategory {
  Free,
  Below2,
  Below5,
  Below10,
  Above10,
}

class _OrderStartState extends State<OrderStart> {
  late Map<String, int> quantity = {};
  Map<String, dynamic>? FoodMenu;
  PriceCategory selectedCategory = PriceCategory.Free; // Default filter
  late CountdownController _countdownController = new CountdownController(autoStart: true);
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    _countdownController = CountdownController();
    startTimer();

    dbRef = FirebaseDatabase.instance.ref().child('FoodMenu');
    getMenuData();

    dbRef.onChildChanged.listen((event) {
      setState(() {
        quantity[event.snapshot.key ?? 'Quantity'] =
            event.snapshot.child('FoodMenu').value as int? ?? 0;
      });
    });
  }

  void getMenuData() async {
    DataSnapshot snapshot = await dbRef.child(widget.FoodMenukey).get();
    setState(() {
      FoodMenu = snapshot.value as Map<String, dynamic>;
    });
  }

  DatabaseReference reference = FirebaseDatabase.instance.ref().child(
      'FoodMenu');

  void startTimer() {
    Future.delayed(Duration.zero, () {
      _countdownController.start(); // Start the countdown when the widget is loaded
    });
  }

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return ViewOrderFood(FoodMenukey: widget.FoodMenukey);
    }));
  }

  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Normalprofile();
    }));
  }

  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return Menu();
    }));
  }

  void _showCancelOrderDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              top: 200, // Adjust the top position as needed
              left: 40, // Adjust the left position as needed
              child: SizedBox(
                width: 300,
                child: AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  content: Text(
                    'Sorry, your order is cancelled!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: [
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        if (FoodMenu != null && FoodMenu!['Quantity'] != null) {
                          int? currentQuantity = int.tryParse(FoodMenu!['Quantity'].toString());
                          if (currentQuantity != null && currentQuantity > 0) {
                            int newQuantity = currentQuantity + 1;
                            dbRef.child(widget.FoodMenukey).update({'Quantity': newQuantity.toString()})
                                .then((_) {
                              setState(() {
                                FoodMenu!['Quantity'] = newQuantity.toString();
                                // Perform other operations if needed
                              });
                            })
                                .catchError((error) {
                              print('Failed to update quantity: $error');
                            });
                          }
                        }
                        navigateNextPage3(context);
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }


  Widget foodItem({required Map FoodMenu}) {
    return Card(
      color: Color(0xFFFFCD93), // Set the container color
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left side: Food photo
            Container(
              width: 100, // Adjust as needed
              height: 100, // Adjust as needed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('lib/assets/images/food.jpg'),
                  // Replace with your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10), // Spacer between photo and details
            // Right side: Food details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${FoodMenu['Food Name']} (${FoodMenu['Store Name']})',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        'Quantity: ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '${FoodMenu['Quantity']}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 15), // Icon for address
                      Text(
                        '${FoodMenu['Address']}',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.bookmark, size: 15,), // Icon for remark
                      Text(
                        '${FoodMenu['Remarks']}',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.attach_money, size: 15), // Icon for price
                      Text(
                        'RM ${FoodMenu['Price(RM)']}',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) =>
                            OrderFood(FoodMenukey: FoodMenu['key'])),
                      );
                    },
                    child: Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF9ADBBF),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Order',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
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
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Menu',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight
                              .bold),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      navigateNextPage2(context);
                    },
                    icon: Icon(Icons.account_circle),
                    color: Colors.black,
                  ),
                  SizedBox(width: 10), // Adjust this width to suit spacing
                ],
              ),
            ),

            // time column
            Positioned(
              left: 0,
              top: 0,
              child: GestureDetector(
                onTap: () {
                  navigateNextPage(context);
                },
                child: Container(
                  width: 390,
                  height: 30,
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
                      SizedBox(width: 5),
                      Text(
                        'Time remaining for pickup:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                      Countdown(
                        controller: _countdownController,
                        // Set timer
                        seconds: 2400, // 40 minutes in seconds
                        build: (_, double time) => Text(
                          formatTime(time),
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        interval: Duration(milliseconds: 100),
                        onFinished: () {
                          _showCancelOrderDialog(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),


            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFilterButton('Free', PriceCategory.Free, Icons.money_off),
                buildFilterButton('Below RM 2', PriceCategory.Below2, Icons.monetization_on_outlined),
                buildFilterButton('Below RM 5', PriceCategory.Below5, Icons.monetization_on_outlined),
              ],
            ),
            SizedBox(height: 10), // Adjust the height as needed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFilterButton('Below RM 10', PriceCategory.Below10, Icons.monetization_on_outlined),
                buildFilterButton('Above RM 10', PriceCategory.Above10, Icons.monetization_on_outlined),
              ],
            ),

            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FirebaseAnimatedList(
                  query: dbRef,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    Map FoodMenu = snapshot.value as Map;
                    FoodMenu['key'] = snapshot.key;
                    double price = double.tryParse(FoodMenu['Price(RM)'] ?? '0.0') ?? 0.0;
                    int quantity = int.tryParse(FoodMenu['Quantity']?? '0') ?? 0;
                    bool shouldDisplay = false;

                    switch (selectedCategory) {
                      case PriceCategory.Free:
                        shouldDisplay = price == 0 && quantity >= 1;
                        break;
                      case PriceCategory.Below2:
                        shouldDisplay = price <= 2 && quantity >= 1;
                        break;
                      case PriceCategory.Below5:
                        shouldDisplay = price <= 5 && quantity >= 1;
                        break;
                      case PriceCategory.Below10:
                        shouldDisplay = price <= 10 && quantity >= 1;
                        break;
                      case PriceCategory.Above10:
                        shouldDisplay = price > 10 && quantity >= 1;
                        break;
                    }

                    return shouldDisplay ? foodItem(FoodMenu: FoodMenu) : SizedBox();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilterButton(String label, PriceCategory category, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          selectedCategory = category;
        });
      },
      icon: Icon(icon),
      label: Text(label),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(selectedCategory == category ? Color(0xFF20392c) : Colors.grey),
      ),
    );
  }
  String formatTime(double time) {
    int hours = (time / 3600).floor();
    int minutes = ((time % 3600) / 60).floor();
    int seconds = (time % 60).floor();

    String twoDigits(int n) {
      if (n >= 10) {
        return "$n";
      }
      return "0$n";
    }

    return "${twoDigits(hours)}:${twoDigits(minutes)}:${twoDigits(seconds)}";
  }

}