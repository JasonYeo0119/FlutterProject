import "package:flutter/material.dart";
import "DonePost.dart";
import "HomepageStaff.dart";
import 'package:firebase_database/firebase_database.dart';

class PostFood extends StatefulWidget {
  const PostFood({Key? key}) : super(key: key);

  @override
  State<PostFood> createState() => _PostFoodState();
}
class _PostFoodState extends State<PostFood> {

  final foodname= TextEditingController();
  final quantity= TextEditingController();
  final storename=TextEditingController();
  final address= TextEditingController();
  final price= TextEditingController();
  final remarks=TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('FoodMenu'); //represents the location 'FoodMenu' within the database
  }

  @override
  //go back
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }
  //red cancel
  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }
  //green done
  void navigateNextPage3(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return DonePost();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 390,
          height: 777,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFFE5FFFC)),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 390,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0x7F6BA6FE)),
                ),
              ),
              Positioned(
                left: 40,
                top: 32,
                child: SizedBox(
                  width: 141,
                  height: 34,
                  child: Text(
                    'Post a feed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.04,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 70,
                child: Image.asset(
                  'lib/assets/images/foodcartoon.png', // Set the correct image path
                  width: 338,
                  height: 180, // Set the desired height
                  fit: BoxFit.cover,
                ),
              ),

              /*Positioned(
                left: 134,
                top: 100,
                child: Container(
                  width: 122,
                  height: 141,
                  decoration: BoxDecoration(color: Color(0xB7D9D9D9)),
                ),
              ),
              Positioned(
                left: 141,
                top: 141,
                child: SizedBox(
                  width: 108,
                  child: Text(
                    'Tap here to add photo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
              ),*/
              Positioned(
                left: 26,
                top: 277,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: 118,
                  top: 277,
                  child: Container(
                      width: 245,
                      height: 34,
                    child: TextField(
                      controller: foodname,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Name',
                        hintText: 'Please enter the food name...',
                          hintStyle: TextStyle(fontSize: 15),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                      ),
                    ),
                  ),
                  ),
              Positioned(
                left: 119,
                top: 277,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 39,
                top: 297,
                child: Text(
                  'Food Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 336,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 336,
                child: Container(
                  width: 245,
                  height: 34,
                  child: TextField(
                    controller: quantity,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Name',
                        hintText: 'Please enter the quantity...',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 336,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 48,
                top: 355,
                child: Text(
                  'Quantity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 395,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 395,
                child: Container(
                  width: 245,
                  height: 34,
                  child: TextField(
                    controller: storename,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Name',
                        hintText: 'Please enter your store name...',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 395,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 37,
                top: 415,
                child: Text(
                  'Store Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 454,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 454,
                child: Container(
                  width: 245,
                  height: 34,
                  child: TextField(
                    controller: address,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Name',
                        hintText: 'Please enter your store address...',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 454,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 473,
                child: Text(
                  'Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 513,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 513,
                child: Container(
                  width: 245,
                  height: 34,
                  child: TextField(
                    controller: price,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Name',
                        hintText: 'Please enter the price...',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 513,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 533,
                child: Text(
                  'Price (RM)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 26,
                top: 572,
                child: Container(
                  width: 338,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 572,
                child: Container(
                  width: 245,
                  height: 34,
                  child: TextField(
                    controller: remarks,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        //labelText: 'Name',
                        hintText: 'Please enter the remarks if any...',
                        hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0)
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 119,
                top: 572,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                  child: Container(
                    width: 33,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 46,
                top: 591,
                child: Text(
                  'Remarks',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.15,
                    letterSpacing: -0.50,
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 13,
                child: TextButton(
                  onPressed: () {navigateNextPage(context);},  //blue
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Image.asset('lib/assets/images/cancel button.png'),
                ),
                width: 25,
                height: 25,
              ),
              Positioned(
                left: 196,
                top: 682,
                child: TextButton(
                  onPressed: () {navigateNextPage3(context);},  //blue
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Container(
                  width: 163,
                  height: 64,
                  decoration: ShapeDecoration(
                    color: Color(0xFF9ADBBF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                ),
              ),

              Positioned(
                left: 154,
                top: 620,
              child: MaterialButton(
                onPressed: (){
                  Map<String, String> FoodMenu = {
                    'Food Name': foodname.text,
                    'Quantity': quantity.text,
                    'Store Name': storename.text,
                    'Address': address.text,
                    'Price(RM)': price.text,
                    'Remarks': remarks.text
                  };
                  dbRef.push().set(FoodMenu);
                },
                child: const Text('Confirm',
                style: TextStyle(
                  fontSize: 15,
                ),
                ),
                color: Colors.lightBlueAccent,
                textColor: Colors.black,
                minWidth: 80,
                height: 40,
                elevation: 6,
                ),
              ),

              Positioned(
                left: 190,
                top: 720,
                child: SizedBox(
                  width: 174,
                  height: 38,
                  child: Text(
                    'Done',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                      letterSpacing: -0.50,
                    ),
                  ),
                  ),
                ),
              Positioned(
                left: 24,
                top: 682,
                child: TextButton(
                  onPressed: () {navigateNextPage2(context);},  //blue
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: Container(
                  width: 163,
                  height: 64,
                  decoration: ShapeDecoration(
                    color: Color(0xFFDB9A9A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                ),
              ),
              Positioned(
                left: 18,
                top: 720,
                child: TextButton(
                  onPressed: () {navigateNextPage2(context);},  //red cancel
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                child: SizedBox(
                  width: 174,
                  height: 38,
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.05,
                      letterSpacing: -0.50,
                    ),
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}