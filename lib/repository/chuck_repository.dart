import '../networking/api_provider.dart';
import '../models/chuck_response.dart';
import 'dart:async';

class ChuckRepository {
  ApiProvider _provider = ApiProvider();

  Future<ChuckResponse> fetchChuckJoke(String category) async {
    final response = await _provider.get("jokes/random?category=" + category);
    return ChuckResponse.fromJson(response);
  }
}
