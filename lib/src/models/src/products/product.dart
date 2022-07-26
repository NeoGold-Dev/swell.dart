import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  String id;
  String name;
  double price;
  String description;
  String? sku;
  bool? active;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.description,
      this.active,
      this.sku});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
