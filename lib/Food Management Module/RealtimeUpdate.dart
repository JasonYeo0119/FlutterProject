import "package:flutter/material.dart";
import "HomepageStaff.dart";
import "RealtimeUpdate2.dart";
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';


class RealtimeUpdate extends StatefulWidget {
  const RealtimeUpdate({Key? key}) : super(key: key);

  @override
  State<RealtimeUpdate> createState() => _RealtimeUpdateState();
}

class _RealtimeUpdateState extends State<RealtimeUpdate> {

  Query dbRef = FirebaseDatabase.instance.ref().child('FoodMenu');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child(
      'FoodMenu');
  TextEditingController searchController = TextEditingController();
  List<Map> foodMenuList = [];
  List<Map> filteredFoodMenuList = [];

  @override
  void initState() {
    super.initState();
    dbRef.once().then((DatabaseEvent event) {
      DataSnapshot snap =event.snapshot;
      if (snap != null && snap.value != null) {
        Map<dynamic, dynamic>? values = snap.value as Map<dynamic, dynamic>?;

        if (values != null) {
          values.forEach((key, value) {
            foodMenuList.add(value);
          });
          filteredFoodMenuList = List.from(foodMenuList);
        }
      }
    });
  }

  void filterSearchResults(String query) {
    List<Map> searchResults = [];
    if (query.isNotEmpty) {
      for (Map FoodMenu in foodMenuList) {
        String foodName = FoodMenu['Store Name'].toString().toLowerCase();
        if (foodName.contains(query.toLowerCase())) {
          searchResults.add(FoodMenu);
        }
      }
    } else {
      searchResults = List.from(foodMenuList);
    }
    setState(() {
      filteredFoodMenuList = List.from(searchResults);
    });

    // Debug print statement
    print("Filtered List: $filteredFoodMenuList");
  }


  @override
  State<RealtimeUpdate> createState() => _RealtimeUpdateState();

  @override
  //go back
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }

  //update button
  void navigateNextPage2(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return RealtimeUpdate2(FoodMenukey: '',);
    }));
  }

  Widget listItem({required Map FoodMenu}) {
    return Card(
      color: Color(0xFFB2EBF2),
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Adding rounded corners
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Food Name: ${FoodMenu['Food Name']}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              Text(
                'Quantity: ${FoodMenu['Quantity']}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              Text(
                'Store Name: ${FoodMenu['Store Name']}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              Text(
                'Address: ${FoodMenu['Address']}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              Text(
                'Price(RM): ${FoodMenu['Price(RM)']}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              Text(
                'Remarks: ${FoodMenu['Remarks']}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) =>
                            RealtimeUpdate2(FoodMenukey: FoodMenu['key'])),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF01579B),
                      ),
                      child: Text(
                      'Edit',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                    ),
                      ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      reference.child(FoodMenu['key']).remove();
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                      color: Colors.redAccent,
                    ),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ],
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
        color: Color(0xFFE5FFFC),
        child: Column(
          children: [
            Container(
              width: 390,
              height: 50,
              color: Color(0xFF9ADBBF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                      onPressed: () {
                        navigateNextPage(context);
                      },
                      icon: Icon(Icons.cancel_outlined,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130),
                    child: Text(
                      'Real-time Update',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  filterSearchResults(value);
                },
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Enter food name...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FirebaseAnimatedList(
                query: dbRef,
                itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
                  if (index < filteredFoodMenuList.length) {
                    Map FoodMenu = filteredFoodMenuList[index];
                    FoodMenu['key'] = snapshot.key;
                    return listItem(FoodMenu: FoodMenu);
                  } else {
                    return Container(); // Return an empty container if the index is out of bounds
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}