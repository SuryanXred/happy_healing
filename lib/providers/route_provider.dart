import 'package:flutter/material.dart';

import '../data/datasource/dummy_data.dart';
import '../models/route_model.dart';

class RouteProvider extends ChangeNotifier {

  List<RouteModel> _routes =
      snorkelingRoutes;

  List<RouteModel> get routes =>
      _routes;

  /// SEARCH
  void searchRoute(
    String keyword,
  ) {

    if (keyword.isEmpty) {

      _routes =
          snorkelingRoutes;
    } else {

      _routes =
          snorkelingRoutes
              .where(
                (route) =>
                    route.name
                        .toLowerCase()
                        .contains(
                          keyword
                              .toLowerCase(),
                        ),
              )
              .toList();
    }

    notifyListeners();
  }

  /// FILTER DIFFICULTY
  void filterDifficulty(
    String difficulty,
  ) {

    if (difficulty ==
        'All') {

      _routes =
          snorkelingRoutes;
    } else {

      _routes =
          snorkelingRoutes
              .where(
                (route) =>
                    route
                        .difficulty ==
                    difficulty,
              )
              .toList();
    }

    notifyListeners();
  }

  /// SORT PRICE LOW
  void sortPriceLow() {

    _routes.sort(
      (a, b) =>
          a.price.compareTo(
        b.price,
      ),
    );

    notifyListeners();
  }

  /// SORT PRICE HIGH
  void sortPriceHigh() {

    _routes.sort(
      (a, b) =>
          b.price.compareTo(
        a.price,
      ),
    );

    notifyListeners();
  }

  /// RESET
  void reset() {

    _routes =
        snorkelingRoutes;

    notifyListeners();
  }
}