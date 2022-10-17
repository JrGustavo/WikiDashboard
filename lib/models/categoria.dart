import 'dart:convert';

class Categoria {
  Categoria({
    required this.id,
    required this.nombre,
    required this.parentId,
    required this.position,
    required this.image,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.translations,
  });

  int id;
  String nombre;
  int parentId;
  int position;
  String image;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  List<dynamic> translations;

  factory Categoria.fromJson(String str) => Categoria.fromMap(json.decode(str));

  get categorias => null;

  String toJson() => json.encode(toMap());

  factory Categoria.fromMap(Map<String, dynamic> json) => Categoria(
    id: json["id"],
    nombre: json["name"],
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
    "name": nombre,
    "parent_id": parentId,
    "position": position,
    "image": image,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "translations": List<dynamic>.from(translations.map((x) => x)),
  };
}


