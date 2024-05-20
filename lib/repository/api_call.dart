import 'package:mahawanti_task/data/remote/network/network_api_service.dart';
import '../data/remote/network/api_endpoints.dart';

class ApiRepo {
  final _apiService = NetworkApiService();

  @override
  Future<dynamic> tempApi(dynamic body) async {
    try {
      final resp = await _apiService.postResponse(ApiEndPoints.tempUrl, body);
      return resp;
    } on Exception catch (_) {
      rethrow;
    }
  }
}
