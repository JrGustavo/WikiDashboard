import 'dart:convert';

class BannersResponse {
  BannersResponse({
    required this.id,
    required this.title,
    required this.image,
    required this.productId,
    required this.categoryId,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String title;
  String image;
  dynamic productId;
  int categoryId;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  factory BannersResponse.fromJson(String str) => BannersResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannersResponse.fromMap(Map<String, dynamic> json) => BannersResponse(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    productId: json["product_id"],
    categoryId: json["category_id"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "title": title,
    "image": image,
    "product_id": productId,
    "category_id": categoryId,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
