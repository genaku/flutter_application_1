import 'item_data.dart';

abstract class ItemRepository {
  Future<List<ItemData>> getItems();
}
