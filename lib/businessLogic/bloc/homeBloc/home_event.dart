part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCovidSummary() = _GetCovidSummary;

  const factory HomeEvent.searchCountry({@Default("") String query}) =
      _SearchCountry;

  const factory HomeEvent.resetStates() = _ResetStates;
}
