import 'package:flutter/foundation.dart';

abstract class RewardDB {}

class RewardFirestore implements RewardDB {
  RewardFirestore({required this.userid});
  final String userid;
}
