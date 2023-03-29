import 'package:dio/dio.dart';
import 'package:moovbe/api/endpoints.dart';

class DioClient {
  final Dio _dio = Dio();

  final baseUrl = 'http://flutter.noviindus.co.in/api/';

  void request(int urlId) async {
    Response response;

    response = await _dio.get(
      baseUrl + Endpoints.getDriverList,
      queryParameters: {
        'url_id': urlId,
      },
    );
    print(response.data.toString());
  }
}
