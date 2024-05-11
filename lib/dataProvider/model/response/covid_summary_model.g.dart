// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'covid_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CovidSummaryModelImpl _$$CovidSummaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CovidSummaryModelImpl(
      global: json['Global'] == null
          ? null
          : GlobalModel.fromJson(json['Global'] as Map<String, dynamic>),
      countries: (json['Countries'] as List<dynamic>?)
          ?.map((e) => CountriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorCode: (json['errorCode'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$CovidSummaryModelImplToJson(
        _$CovidSummaryModelImpl instance) =>
    <String, dynamic>{
      'Global': instance.global?.toJson(),
      'Countries': instance.countries?.map((e) => e.toJson()).toList(),
      'errorCode': instance.errorCode,
      'message': instance.message,
    };
