import 'package:dio/dio.dart';
import 'package:flutter_application_1/api_service.dart';

import 'item_data.dart';

class ItemRepository {
  final dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
      headers: {"Content-Type": "application/json"},
    ),
  );
  late final apiService = ApiService(dio);

  Future<List<ItemData>> getItems() async {
    return apiService.getUsers().then(
      (posts) => posts
          .map((post) => ItemData(post.id, post.name, post.email))
          .toList(),
    );
  }
}
