part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(InitialApiRequestStatus()) ApiRequestStatus getCovidSummaryARS,
    @Default([]) List<CountriesModel>? allCountriesList,
    @Default([]) List<CountriesModel>? filteredList,
    @Default(false) bool isSearchNotFound,
  }) = _Initial;
}
