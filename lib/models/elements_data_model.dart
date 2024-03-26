import 'package:json_annotation/json_annotation.dart';

part 'elements_data_model.g.dart';

@JsonSerializable()
class PeriodicElement {
  final int atomicNumber;
  final String symbol;
  final String name;
  @JsonKey(name: 'atomicWeight')
  final double? atomicMass;
  final String? hexColor;
  final String? electronConfiguration;
  final double? electronegativity;
  final int? atomicRadius;
  final double? ionizationEnergy;
  final String? oxidationStates;
  final String? state;
  final int? meltingPoint;
  final int? boilingPoint;
  final double? density;
  final String? group;
  final int? yearDiscovered;

  PeriodicElement({
    required this.atomicNumber,
    required this.symbol,
    required this.name,
    this.atomicMass,
    this.hexColor,
    this.electronConfiguration,
    this.electronegativity,
    this.atomicRadius,
    this.ionizationEnergy,
    this.oxidationStates,
    this.state,
    this.meltingPoint,
    this.boilingPoint,
    this.density,
    this.group,
    this.yearDiscovered,
  });

  factory PeriodicElement.fromJson(Map<String, dynamic> json) =>
      _$PeriodicElementFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodicElementToJson(this);
}
