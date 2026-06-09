import 'package:flutter/material.dart';

import '../models/route_model.dart';

class FavoriteProvider
    extends ChangeNotifier {

  final List<RouteModel>
      _favorites = [];

  List<RouteModel>
      get favorites =>
          _favorites;

  /// CHECK FAVORITE
  bool isFavorite(
    RouteModel route,
  ) {

    return _favorites.any(
      (item) =>
          item.id ==
          route.id,
    );
  }

  /// TOGGLE FAVORITE
  void toggleFavorite(
    RouteModel route,
  ) {

    if (isFavorite(route)) {

      _favorites.removeWhere(
        (item) =>
            item.id ==
            route.id,
      );
    } else {

      _favorites.add(route);
    }

    notifyListeners();
  }

  /// REMOVE
  void removeFavorite(
    RouteModel route,
  ) {

    _favorites.removeWhere(
      (item) =>
          item.id ==
          route.id,
    );

    notifyListeners();
  }

  /// CLEAR ALL
  void clearFavorites() {

    _favorites.clear();

    notifyListeners();
  }
}