import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement_application/data/dummy_data.dart';

final mealsProvider = Provider(
    (ref) {
      return dummyMeals;
    }
);