// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:teste_moteis_go/app/core/models/data_model.dart';

class ResultModel {
  bool? sucesso;
  DataModel? data;
  List? mensagem;
  ResultModel({
    this.sucesso,
    this.data,
    this.mensagem,
  });

  ResultModel copyWith({
    bool? sucesso,
    DataModel? data,
    List? mensagem,
  }) {
    return ResultModel(
      sucesso: sucesso ?? this.sucesso,
      data: data ?? this.data,
      mensagem: mensagem ?? this.mensagem,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sucesso': sucesso,
      'data': data,
      'mensagem': mensagem,
    };
  }

  factory ResultModel.fromMap(Map<String, dynamic> map) {
    return ResultModel(
      sucesso: map['sucesso'],
      data: map['data'] != null ? DataModel.fromMap(map['data']) : null,
      mensagem: map['mensagem'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultModel.fromJson(String source) =>
      ResultModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ResultModel(sucesso: $sucesso, data: $data, mensagem: $mensagem)';

  @override
  bool operator ==(covariant ResultModel other) {
    if (identical(this, other)) return true;

    return other.sucesso == sucesso &&
        other.data == data &&
        other.mensagem == mensagem;
  }

  @override
  int get hashCode => sucesso.hashCode ^ data.hashCode ^ mensagem.hashCode;
}
