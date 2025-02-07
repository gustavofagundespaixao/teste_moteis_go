// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:teste_moteis_go/app/core/models/motel_model.dart';

class DataModel {
  int? pagina;
  int? qtdPorPagina;
  int? totalSuites;
  int? totalMoteis;
  int? raio;
  double? maxPaginas;
  List<MotelModel>? moteis;
  DataModel({
    this.pagina,
    this.qtdPorPagina,
    this.totalSuites,
    this.totalMoteis,
    this.raio,
    this.maxPaginas,
    this.moteis,
  });

  DataModel copyWith({
    int? pagina,
    int? qtdPorPagina,
    int? totalSuites,
    int? totalMoteis,
    int? raio,
    double? maxPaginas,
    List<MotelModel>? moteis,
  }) {
    return DataModel(
      pagina: pagina ?? this.pagina,
      qtdPorPagina: qtdPorPagina ?? this.qtdPorPagina,
      totalSuites: totalSuites ?? this.totalSuites,
      totalMoteis: totalMoteis ?? this.totalMoteis,
      raio: raio ?? this.raio,
      maxPaginas: maxPaginas ?? this.maxPaginas,
      moteis: moteis ?? this.moteis,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pagina': pagina,
      'qtdPorPagina': qtdPorPagina,
      'totalSuites': totalSuites,
      'totalMoteis': totalMoteis,
      'raio': raio,
      'maxPaginas': maxPaginas,
      'moteis': moteis,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      pagina: map['pagina'],
      qtdPorPagina: map['qtdPorPagina'],
      totalSuites: map['totalSuites'],
      totalMoteis: map['totalMoteis'],
      raio: map['raio'],
      maxPaginas: map['maxPaginas'],
      moteis: map['moteis'] != null
          ? List<MotelModel>.from(
              (map['moteis']).map<MotelModel?>((x) => MotelModel.fromMap(x)),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DataModel.fromJson(String source) =>
      DataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataModel(pagina: $pagina, qtdPorPagina: $qtdPorPagina, totalSuites: $totalSuites, totalMoteis: $totalMoteis, raio: $raio, maxPaginas: $maxPaginas, moteis: $moteis)';
  }

  @override
  bool operator ==(covariant DataModel other) {
    if (identical(this, other)) return true;

    return other.pagina == pagina &&
        other.qtdPorPagina == qtdPorPagina &&
        other.totalSuites == totalSuites &&
        other.totalMoteis == totalMoteis &&
        other.raio == raio &&
        other.maxPaginas == maxPaginas &&
        listEquals(other.moteis, moteis);
  }

  @override
  int get hashCode {
    return pagina.hashCode ^
        qtdPorPagina.hashCode ^
        totalSuites.hashCode ^
        totalMoteis.hashCode ^
        raio.hashCode ^
        maxPaginas.hashCode ^
        moteis.hashCode;
  }
}
