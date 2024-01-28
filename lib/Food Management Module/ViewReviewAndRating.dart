import "package:flutter/material.dart";
import "HomepageStaff.dart";
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

class ViewReviewAndRating extends StatefulWidget {
  const ViewReviewAndRating({Key? key}) : super(key: key);

  @override
  State<ViewReviewAndRating> createState() => _ViewReviewAndRatingState();
}

class _ViewReviewAndRatingState extends State<ViewReviewAndRating> {

  Query dbRef = FirebaseDatabase.instance.ref().child('Feedback');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child(
      'Feedback');

  @override
  State<ViewReviewAndRating> createState() => _ViewReviewAndRatingState();

  @override
  //go back
  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HomepageStaff();
    }));
  }

  Widget listItem({required Map Feedback}) {
    int starRating = Feedback['Star Rating'];
    String storeName = Feedback['Store Name'];
    if(storeName == 'Uncle Hooi') {
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
                  'Store Name: ${Feedback['Store Name']}\n',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
                Text(
                  'Food Name: ${Feedback['Food Name']}\n',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
                Text(
                  'Order DateTime: ${Feedback['Order DateTime']}\n',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
                Row(
                    children: [
                      Text(
                        'Star Rating:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: List.generate(starRating, (index) =>
                            Icon(Icons.star,
                              color: Colors.yellow,)),
                      )
                    ]
                ),
                Text(
                  '\nComment: ${Feedback['Comment']}\n\n',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      );
    }
    else{
      return Container();
    }
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        'View Review & Rating',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FirebaseAnimatedList(
                    query: dbRef,
                    itemBuilder: (BuildContext context, DataSnapshot snapshot,
                        Animation<double> animation, int index) {
                      Map Feedback = snapshot.value as Map;
                      Feedback['key'] = snapshot.key;
                      return listItem(Feedback: Feedback);
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