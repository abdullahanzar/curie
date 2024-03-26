// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elements_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeriodicElement _$PeriodicElementFromJson(Map<String, dynamic> json) =>
    PeriodicElement(
      atomicNumber: json['atomicNumber'] as int,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      atomicMass: (json['atomicWeight'] as num?)?.toDouble(),
      hexColor: json['hexColor'] as String?,
      electronConfiguration: json['electronConfiguration'] as String?,
      electronegativity: (json['electronegativity'] as num?)?.toDouble(),
      atomicRadius: json['atomicRadius'] as int?,
      ionizationEnergy: (json['ionizationEnergy'] as num?)?.toDouble(),
      oxidationStates: json['oxidationStates'] as String?,
      state: json['state'] as String?,
      meltingPoint: json['meltingPoint'] as int?,
      boilingPoint: json['boilingPoint'] as int?,
      density: (json['density'] as num?)?.toDouble(),
      group: json['group'] as String?,
      yearDiscovered: json['yearDiscovered'] as int?,
    );

Map<String, dynamic> _$PeriodicElementToJson(PeriodicElement instance) =>
    <String, dynamic>{
      'atomicNumber': instance.atomicNumber,
      'symbol': instance.symbol,
      'name': instance.name,
      'atomicWeight': instance.atomicMass,
      'hexColor': instance.hexColor,
      'electronConfiguration': instance.electronConfiguration,
      'electronegativity': instance.electronegativity,
      'atomicRadius': instance.atomicRadius,
      'ionizationEnergy': instance.ionizationEnergy,
      'oxidationStates': instance.oxidationStates,
      'state': instance.state,
      'meltingPoint': instance.meltingPoint,
      'boilingPoint': instance.boilingPoint,
      'density': instance.density,
      'group': instance.group,
      'yearDiscovered': instance.yearDiscovered,
    };
