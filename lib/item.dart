import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart'; 

@JsonSerializable()
class Item {
  const Item({required this.id, required this.name, required this.email});

  final int id;
  final String name;
  final String email;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}