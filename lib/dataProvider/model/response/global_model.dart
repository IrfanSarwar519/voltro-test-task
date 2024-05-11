import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_model.freezed.dart';
part 'global_model.g.dart';

@freezed
class GlobalModel with _$GlobalModel {
  @JsonSerializable(explicitToJson: true)
  const factory GlobalModel(
      {@JsonKey(name: 'NewConfirmed') int? newConfirmed,
      @JsonKey(name: 'TotalConfirmed') int? totalConfirmed,
      @JsonKey(name: 'NewDeaths') int? newDeaths,
      @JsonKey(name: 'TotalDeaths') int? totalDeaths,
      @JsonKey(name: 'NewRecovered') int? newRecovered,
      @JsonKey(name: 'TotalRecovered') int? totalRecovered}) = _GlobalModel;

  factory GlobalModel.fromJson(Map<String, dynamic> json) =>
      _$GlobalModelFromJson(json);
}
