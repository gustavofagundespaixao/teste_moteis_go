// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:teste_moteis_go/app/core/models/suite_model.dart';

class MotelModel {
  String? fantasia;
  String? logo;
  String? bairro;
  double? distancia;
  int? qtdFavoritos;
  List<SuiteModel>? suites;
  int? qtdAvaliacoes;
  double? media;
  MotelModel({
    this.fantasia,
    this.logo,
    this.bairro,
    this.distancia,
    this.qtdFavoritos,
    this.suites,
    this.qtdAvaliacoes,
    this.media,
  });

  MotelModel copyWith({
    String? fantasia,
    String? logo,
    String? bairro,
    double? distancia,
    int? qtdFavoritos,
    List<SuiteModel>? suites,
    int? qtdAvaliacoes,
    double? media,
  }) {
    return MotelModel(
      fantasia: fantasia ?? this.fantasia,
      logo: logo ?? this.logo,
      bairro: bairro ?? this.bairro,
      distancia: distancia ?? this.distancia,
      qtdFavoritos: qtdFavoritos ?? this.qtdFavoritos,
      suites: suites ?? this.suites,
      qtdAvaliacoes: qtdAvaliacoes ?? this.qtdAvaliacoes,
      media: media ?? this.media,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fantasia': fantasia,
      'logo': logo,
      'bairro': bairro,
      'distancia': distancia,
      'qtdFavoritos': qtdFavoritos,
      'suites': suites,
      'qtdAvaliacoes': qtdAvaliacoes,
      'media': media,
    };
  }

  factory MotelModel.fromMap(Map<String, dynamic> map) {
    return MotelModel(
      fantasia: map['fantasia'],
      logo: map['logo'],
      bairro: map['bairro'],
      distancia: map['distancia'],
      qtdFavoritos: map['qtdFavoritos'],
      suites: map['suites'] != null
          ? List<SuiteModel>.from(
              (map['suites']).map<SuiteModel?>(
                (x) => SuiteModel.fromMap(x),
              ),
            )
          : null,
      qtdAvaliacoes: map['qtdAvaliacoes'],
      media: map['media'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MotelModel.fromJson(String source) =>
      MotelModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MotelModel(fantasia: $fantasia, logo: $logo, bairro: $bairro, distancia: $distancia, qtdFavoritos: $qtdFavoritos, suites: $suites, qtdAvaliacoes: $qtdAvaliacoes, media: $media)';
  }

  @override
  bool operator ==(covariant MotelModel other) {
    if (identical(this, other)) return true;

    return other.fantasia == fantasia &&
        other.logo == logo &&
        other.bairro == bairro &&
        other.distancia == distancia &&
        other.qtdFavoritos == qtdFavoritos &&
        listEquals(other.suites, suites) &&
        other.qtdAvaliacoes == qtdAvaliacoes &&
        other.media == media;
  }

  @override
  int get hashCode {
    return fantasia.hashCode ^
        logo.hashCode ^
        bairro.hashCode ^
        distancia.hashCode ^
        qtdFavoritos.hashCode ^
        suites.hashCode ^
        qtdAvaliacoes.hashCode ^
        media.hashCode;
  }
}
