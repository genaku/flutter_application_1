import 'package:dio/dio.dart';
import 'package:flutter_application_1/api_service.dart';
import 'package:flutter_application_1/item_data.dart';
import 'package:flutter_application_1/item_repository.dart';

class ItemRepositoryImpl implements ItemRepository {
  final _dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
      headers: {"Content-Type": "application/json"},
    ),
  );
  late final _apiService = ApiService(_dio);

  @override
  Future<List<ItemData>> getItems() async {
    return _apiService.getUsers().then(
      (posts) => posts
          .map((post) => ItemData(post.id, post.name, post.email))
          .toList(),
    );
  }
}
