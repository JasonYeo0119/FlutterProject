import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatabase {
  final CollectionReference _counterCollection =
      FirebaseFirestore.instance.collection('counters');

  Future<int> getCounterValue() async {
    // Fetch the counter value from Firestore
    DocumentSnapshot snapshot = await _counterCollection.doc('counter').get();
    if (snapshot.exists) {
      return snapshot['value'] as int;
    } else {
      return 0; // Default value if document doesn't exist yet
    }
  }

  Future<void> updateCounterValue(int newValue) async {
    // Update the counter value in Firestore
    await _counterCollection.doc('counter').set({'value': newValue});
  }
}
