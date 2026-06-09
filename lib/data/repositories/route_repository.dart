import '../../models/route_model.dart';
import '../datasource/dummy_data.dart';

class RouteRepository {

  List<RouteModel> getRoutes() {
    return snorkelingRoutes;
  }

  RouteModel? getRouteById(int id) {

    try {

      return snorkelingRoutes.firstWhere(
        (route) => route.id == id,
      );

    } catch (_) {

      return null;
    }
  }
}