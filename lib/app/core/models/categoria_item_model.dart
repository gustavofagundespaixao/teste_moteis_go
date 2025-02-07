// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoriaItemModel {
  String? nome;
  String? icone;
  CategoriaItemModel({
    this.nome,
    this.icone,
  });

  CategoriaItemModel copyWith({
    String? nome,
    String? icone,
  }) {
    return CategoriaItemModel(
      nome: nome ?? this.nome,
      icone: icone ?? this.icone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'icone': icone,
    };
  }

  factory CategoriaItemModel.fromMap(Map<String, dynamic> map) {
    return CategoriaItemModel(
      nome: map['nome'],
      icone: map['icone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriaItemModel.fromJson(String source) =>
      CategoriaItemModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoriaItemModel(nome: $nome, icone: $icone)';

  @override
  bool operator ==(covariant CategoriaItemModel other) {
    if (identical(this, other)) return true;

    return other.nome == nome && other.icone == icone;
  }

  @override
  int get hashCode => nome.hashCode ^ icone.hashCode;
}
