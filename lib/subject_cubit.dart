import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/item_repository.dart';
import 'subject_state.dart';

class SubjectCubit extends Cubit<SubjectState> {
  SubjectCubit() : super(SubjectLoading());

  ItemRepository itemRepository = ItemRepository();

  Future<void> loadItems() async {
    try {
      emit(SubjectLoading());
      await Future.delayed(const Duration(seconds: 2));
      final items = await itemRepository.getItems();
      emit(SubjectLoaded(items));
    } catch (e) {
      emit(SubjectError(e.toString()));
    }
  }
}