import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/item_repository.dart';
import 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  ItemsCubit(this._itemRepository) : super(ItemsLoading());

  late final ItemRepository _itemRepository;

  Future<void> loadItems() async {
    try {
      emit(ItemsLoading());
      // await Future.delayed(const Duration(seconds: 2));
      final items = await _itemRepository.getItems();
      emit(ItemsLoaded(items));
    } catch (e) {
      emit(ItemsError(e.toString()));
    }
  }
}