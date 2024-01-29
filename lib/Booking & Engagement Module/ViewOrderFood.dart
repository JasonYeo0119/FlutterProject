import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timer_count_down/timer_controller.dart';


class ViewOrderFood extends StatefulWidget {

  const ViewOrderFood({Key? key, required this.FoodMenukey}) : super(key: key);
  final String FoodMenukey;

  @override
  State<ViewOrderFood> createState() => _ViewOrderFoodState();
}

class _ViewOrderFoodState extends State<ViewOrderFood> {
  late CountdownController _countdownController = new CountdownController(autoStart: true);
  late DatabaseReference dbRef;
  Map<String, dynamic>? FoodMenu;


  @override
  void initState() {
    super.initState();
    _countdownController = CountdownController();
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
  Widget build(BuildContext context) {
    DateTime currentTime = DateTime.now();
    String formattedTime = DateFormat('yyyy-MM-dd hh:mm a').format(currentTime);
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
                            'My Food',
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
                  width: 390,
                  child: Stack(
                    children: [

                      Positioned(
                        left: 15,
                        top: 35,
                        child: Text(
                          'Here is the food you will pickup later !',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                            letterSpacing: -0.50,
                          ),
                        ),
                      ),

                      // food column
                      Positioned(
                        left: 10,
                        top: 50,
                        child: Container(
                          width: 365,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Left side - Food photo
                              Positioned(
                                left: 10,
                                top: 100, // To center the image vertically
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage('lib/assets/images/food.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15), // Spacing between the photo and details
                              // Right side - Food details
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15),
                                    Text(
                                      '${FoodMenu!['Food Name'] ?? 'N/A'}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 1.3, // Adjust height for spacing between texts
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Price: RM ${FoodMenu!['Price(RM)'] ?? 'N/A'}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                                      child: Text(
                                        'Your order is completed, please pickup your food within 40 minutes!',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 30), // Adjust the spacing as needed
                                    Text(
                                      formattedTime,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.42),
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        left: 15,
                        top: 260,
                        child: SizedBox(
                          width: 334,
                          height: 24,
                          child: Text(
                            'Here is where you will get your food later !',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0.09,
                              letterSpacing: -0.50,
                            ),
                          ),
                        ),
                      ),

                      // location pic
                      Positioned(
                        left: 15,
                        top: 280,
                        child: Center(
                          child: Container(
                            width: 120,
                            height: 120,
                            alignment: Alignment.center,
                            child: Image.asset(
                              'lib/assets/images/FajarLocation.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                        ),
                      ),

                      // Location details container
                      Positioned(
                        left: 15, // Adjust left position as needed
                        top: 420,
                        child: Container(
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                          ),
                          child: Center(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '📍${FoodMenu!['Store Name'] ?? 'N/A'}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.50,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        left: 15,
                        top: 450,
                        child: Container(
                          width: 230,
                          height: 40,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Address: ${FoodMenu!['Address'] ?? 'N/A'}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                  letterSpacing: -0.50,
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
            ]
        ),
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
