// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:teste_moteis_go/app/core/models/categoria_item_model.dart';
import 'package:teste_moteis_go/app/core/models/periodo_model.dart';
import 'package:teste_moteis_go/app/core/models/result_model.dart';

class SuiteModel {
  String? nome;
  int? qtd;
  bool? exibirQtdDisponiveis;
  List<String>? fotos;
  List<ResultModel>? itens;
  List<CategoriaItemModel>? categoriaItens;
  List<PeriodoModel>? periodos;
  SuiteModel({
    this.nome,
    this.qtd,
    this.exibirQtdDisponiveis,
    this.fotos,
    this.itens,
    this.categoriaItens,
    this.periodos,
  });

  SuiteModel copyWith({
    String? nome,
    int? qtd,
    bool? exibirQtdDisponiveis,
    List<String>? fotos,
    List<ResultModel>? itens,
    List<CategoriaItemModel>? categoriaItens,
    List<PeriodoModel>? periodos,
  }) {
    return SuiteModel(
      nome: nome ?? this.nome,
      qtd: qtd ?? this.qtd,
      exibirQtdDisponiveis: exibirQtdDisponiveis ?? this.exibirQtdDisponiveis,
      fotos: fotos ?? this.fotos,
      itens: itens ?? this.itens,
      categoriaItens: categoriaItens ?? this.categoriaItens,
      periodos: periodos ?? this.periodos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'qtd': qtd,
      'exibirQtdDisponiveis': exibirQtdDisponiveis,
      'fotos': fotos,
      'itens': itens,
      'categoriaItens': categoriaItens,
      'periodos': periodos,
    };
  }

  factory SuiteModel.fromMap(Map<String, dynamic> map) {
    return SuiteModel(
      nome: map['nome'],
      qtd: map['qtd'],
      exibirQtdDisponiveis: map['exibirQtdDisponiveis'],
      fotos: map['fotos'] != null ? List<String>.from((map['fotos'])) : null,
      itens: map['itens'] != null
          ? List<ResultModel>.from(
              (map['itens']).map<ResultModel?>(
                (x) => ResultModel.fromMap(x),
              ),
            )
          : null,
      categoriaItens: map['categoriaItens'] != null
          ? List<CategoriaItemModel>.from(
              (map['categoriaItens']).map<CategoriaItemModel?>(
                (x) => CategoriaItemModel.fromMap(x),
              ),
            )
          : null,
      periodos: map['periodos'] != null
          ? List<PeriodoModel>.from(
              (map['periodos']).map<PeriodoModel?>(
                (x) => PeriodoModel.fromMap(x),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SuiteModel.fromJson(String source) =>
      SuiteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SuiteModel(nome: $nome, qtd: $qtd, exibirQtdDisponiveis: $exibirQtdDisponiveis, fotos: $fotos, itens: $itens, categoriaItens: $categoriaItens, periodos: $periodos)';
  }

  @override
  bool operator ==(covariant SuiteModel other) {
    if (identical(this, other)) return true;

    return other.nome == nome &&
        other.qtd == qtd &&
        other.exibirQtdDisponiveis == exibirQtdDisponiveis &&
        listEquals(other.fotos, fotos) &&
        listEquals(other.itens, itens) &&
        listEquals(other.categoriaItens, categoriaItens) &&
        listEquals(other.periodos, periodos);
  }

  @override
  int get hashCode {
    return nome.hashCode ^
        qtd.hashCode ^
        exibirQtdDisponiveis.hashCode ^
        fotos.hashCode ^
        itens.hashCode ^
        categoriaItens.hashCode ^
        periodos.hashCode;
  }
}
