// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalModelImpl _$$GlobalModelImplFromJson(Map<String, dynamic> json) =>
    _$GlobalModelImpl(
      newConfirmed: (json['NewConfirmed'] as num?)?.toInt(),
      totalConfirmed: (json['TotalConfirmed'] as num?)?.toInt(),
      newDeaths: (json['NewDeaths'] as num?)?.toInt(),
      totalDeaths: (json['TotalDeaths'] as num?)?.toInt(),
      newRecovered: (json['NewRecovered'] as num?)?.toInt(),
      totalRecovered: (json['TotalRecovered'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GlobalModelImplToJson(_$GlobalModelImpl instance) =>
    <String, dynamic>{
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
    };
