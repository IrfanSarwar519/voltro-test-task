import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_model.freezed.dart';
part 'countries_model.g.dart';

@freezed
class CountriesModel with _$CountriesModel {
  @JsonSerializable(explicitToJson: true)
  const factory CountriesModel({
    @JsonKey(name: 'Country') String? country,
    @JsonKey(name: 'CountryCode') String? countryCode,
    @JsonKey(name: 'Slug') String? slug,
    @JsonKey(name: 'NewConfirmed') int? newConfirmed,
    @JsonKey(name: 'TotalConfirmed') int? totalConfirmed,
    @JsonKey(name: 'NewDeaths') int? newDeaths,
    @JsonKey(name: 'TotalDeaths') int? totalDeaths,
    @JsonKey(name: 'NewRecovered') int? newRecovered,
    @JsonKey(name: 'TotalRecovered') int? totalRecovered,
  }) = _CountriesModel;

  factory CountriesModel.fromJson(Map<String, dynamic> json) =>
      _$CountriesModelFromJson(json);
}
