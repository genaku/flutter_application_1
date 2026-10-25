import 'package:equatable/equatable.dart';

class ItemData extends Equatable {
  final int id;
  final String title;
  final String subtitle;

  const ItemData(this.id, this.title, this.subtitle);

  @override
  List<Object?> get props => [id, title, subtitle];
}
