// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ItemModel {
  String? nome;
  ItemModel({
    this.nome,
  });

  ItemModel copyWith({
    String? nome,
  }) {
    return ItemModel(
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(nome: map['nome']);
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ItemModel(nome: $nome)';

  @override
  bool operator ==(covariant ItemModel other) {
    if (identical(this, other)) return true;

    return other.nome == nome;
  }

  @override
  int get hashCode => nome.hashCode;
}
