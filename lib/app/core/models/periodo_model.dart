// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:teste_moteis_go/app/core/models/desconto_model.dart';

class PeriodoModel {
  String? tempoFormatado;
  String? tempo;
  double? valor;
  double? valorTotal;
  bool? temCortesia;
  DescontoModel? desconto;
  PeriodoModel({
    this.tempoFormatado,
    this.tempo,
    this.valor,
    this.valorTotal,
    this.temCortesia,
    this.desconto,
  });

  PeriodoModel copyWith({
    String? tempoFormatado,
    String? tempo,
    double? valor,
    double? valorTotal,
    bool? temCortesia,
    DescontoModel? desconto,
  }) {
    return PeriodoModel(
      tempoFormatado: tempoFormatado ?? this.tempoFormatado,
      tempo: tempo ?? this.tempo,
      valor: valor ?? this.valor,
      valorTotal: valorTotal ?? this.valorTotal,
      temCortesia: temCortesia ?? this.temCortesia,
      desconto: desconto ?? this.desconto,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tempoFormatado': tempoFormatado,
      'tempo': tempo,
      'valor': valor,
      'valorTotal': valorTotal,
      'temCortesia': temCortesia,
      'desconto': desconto,
    };
  }

  factory PeriodoModel.fromMap(Map<String, dynamic> map) {
    return PeriodoModel(
      tempoFormatado: map['tempoFormatado'],
      tempo: map['tempo'],
      valor: map['valor'],
      valorTotal: map['valorTotal'],
      temCortesia: map['temCortesia'],
      desconto: map['desconto'] != null
          ? DescontoModel.fromMap(map['desconto'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PeriodoModel.fromJson(String source) =>
      PeriodoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PeriodoModel(tempoFormatado: $tempoFormatado, tempo: $tempo, valor: $valor, valorTotal: $valorTotal, temCortesia: $temCortesia, desconto: $desconto)';
  }

  @override
  bool operator ==(covariant PeriodoModel other) {
    if (identical(this, other)) return true;

    return other.tempoFormatado == tempoFormatado &&
        other.tempo == tempo &&
        other.valor == valor &&
        other.valorTotal == valorTotal &&
        other.temCortesia == temCortesia &&
        other.desconto == desconto;
  }

  @override
  int get hashCode {
    return tempoFormatado.hashCode ^
        tempo.hashCode ^
        valor.hashCode ^
        valorTotal.hashCode ^
        temCortesia.hashCode ^
        desconto.hashCode;
  }
}
