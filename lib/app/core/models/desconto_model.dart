// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DescontoModel {
  double? desconto;
  DescontoModel({
    this.desconto,
  });

  DescontoModel copyWith({
    double? desconto,
  }) {
    return DescontoModel(
      desconto: desconto ?? this.desconto,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desconto': desconto,
    };
  }

  factory DescontoModel.fromMap(Map<String, dynamic> map) {
    return DescontoModel(desconto: map['desconto']);
  }

  String toJson() => json.encode(toMap());

  factory DescontoModel.fromJson(String source) =>
      DescontoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'DescontoModel(desconto: $desconto)';

  @override
  bool operator ==(covariant DescontoModel other) {
    if (identical(this, other)) return true;

    return other.desconto == desconto;
  }

  @override
  int get hashCode => desconto.hashCode;
}
