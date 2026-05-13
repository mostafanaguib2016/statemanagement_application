import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:statemanagement_application/models/meals.dart';

class FavoritesNotifier extends StateNotifier<List<Meal>>{
  FavoritesNotifier() : super([]);

  bool addFavoriteMeal(Meal meal){
    final mealIsFavorite = state.contains(meal);
    if(mealIsFavorite){
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    }else{
      state = [...state,meal];
      return true;
    }
  }
}

final favoriteMealsProvider = StateNotifierProvider<FavoritesNotifier,List<Meal>>(
    (ref) {
      return FavoritesNotifier();
    }
);