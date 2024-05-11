// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountriesModelImpl _$$CountriesModelImplFromJson(Map<String, dynamic> json) =>
    _$CountriesModelImpl(
      country: json['Country'] as String?,
      countryCode: json['CountryCode'] as String?,
      slug: json['Slug'] as String?,
      newConfirmed: (json['NewConfirmed'] as num?)?.toInt(),
      totalConfirmed: (json['TotalConfirmed'] as num?)?.toInt(),
      newDeaths: (json['NewDeaths'] as num?)?.toInt(),
      totalDeaths: (json['TotalDeaths'] as num?)?.toInt(),
      newRecovered: (json['NewRecovered'] as num?)?.toInt(),
      totalRecovered: (json['TotalRecovered'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CountriesModelImplToJson(
        _$CountriesModelImpl instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'CountryCode': instance.countryCode,
      'Slug': instance.slug,
      'NewConfirmed': instance.newConfirmed,
      'TotalConfirmed': instance.totalConfirmed,
      'NewDeaths': instance.newDeaths,
      'TotalDeaths': instance.totalDeaths,
      'NewRecovered': instance.newRecovered,
      'TotalRecovered': instance.totalRecovered,
    };
