import 'package:freezed_annotation/freezed_annotation.dart';

import 'countries_model.dart';
import 'global_model.dart';

part 'covid_summary_model.freezed.dart';
part 'covid_summary_model.g.dart';

@freezed
class CovidSummaryModel with _$CovidSummaryModel {
  @JsonSerializable(explicitToJson: true)
  const factory CovidSummaryModel(
      {@JsonKey(name: 'Global') GlobalModel? global,
      @JsonKey(name: 'Countries') List<CountriesModel>? countries,

      /// This node is used for getting error codes e.g 400, 422 etc.
      int? errorCode,

      /// This node is used for getting error message from server.
      String? message}) = _CovidSummaryModel;

  factory CovidSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$CovidSummaryModelFromJson(json);
}
