

import 'dart:convert';

class CategoriesResponse {
  CategoriesResponse({
    required this.id,
    required this.name,
    required this.parentId,
    required this.position,
    required this.image,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.translations,
  });

  int id;
  String name;
  int parentId;
  int position;
  String image;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  List<dynamic> translations;

  factory CategoriesResponse.fromJson(String str) => CategoriesResponse.fromMap(json.decode(str));

  get categorias => null;

  String toJson() => json.encode(toMap());

  factory CategoriesResponse.fromMap(Map<String, dynamic> json) => CategoriesResponse(
    id: json["id"],
    name: json["name"],
    parentId: json["parent_id"],
    position: json["position"],
    image: json["image"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    translations: List<dynamic>.from(json["translations"].map((x) => x)),
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "parent_id": parentId,
    "position": position,
    "image": image,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "translations": List<dynamic>.from(translations.map((x) => x)),
  };
}
