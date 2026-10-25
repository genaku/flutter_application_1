import 'package:equatable/equatable.dart';

import 'item_data.dart';

sealed class SubjectState extends Equatable {}

final class SubjectLoading extends SubjectState {
  @override
  List<Object?> get props => [];
}

final class SubjectLoaded extends SubjectState {
  final List<ItemData> items;
  SubjectLoaded(this.items);

  @override
  List<Object?> get props => [items];
}

final class SubjectError extends SubjectState {
  final String message;
  SubjectError(this.message);
  @override
  List<Object?> get props => [message];
}
