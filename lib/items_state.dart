import 'package:equatable/equatable.dart';

import 'item_data.dart';

sealed class ItemsState extends Equatable {}

final class ItemsLoading extends ItemsState {
  @override
  List<Object?> get props => [];
}

final class ItemsLoaded extends ItemsState {
  final List<ItemData> items;
  ItemsLoaded(this.items);

  @override
  List<Object?> get props => [items];
}

final class ItemsError extends ItemsState {
  final String message;
  ItemsError(this.message);
  @override
  List<Object?> get props => [message];
}
