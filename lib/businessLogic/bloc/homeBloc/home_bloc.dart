import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../dataProvider/dependencyInjection/injection_container.dart';
import '../../../dataProvider/model/response/countries_model.dart';
import '../../../dataProvider/network/api_service.dart';
import '../../../helper/constant/strings_resource.dart';
import '../../../helper/util/utils.dart';
import '../../api_request_status.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
          getCovidSummary: (event) async =>
              await _onGetCovidSummary(emit, event),
          searchCountry: (event) async => await _onSearchCountry(emit, event),
          resetStates: (event) async => await _onResetStates(emit, event));
    });
  }

  /// Method for getting Covid Summary.
  Future<void> _onGetCovidSummary(Emitter emit, _GetCovidSummary event) async {
    emit(state.copyWith(getCovidSummaryARS: ApiRequestStatusLoading()));
    await locator<ApiService>()
        .getDataManagerInstance()
        .getCovidSummary()
        .then((response) {
      if (response.errorCode == null) {
        emit(state.copyWith(
            getCovidSummaryARS: ApiRequestStatusSuccess(
              data: response,
            ),
            allCountriesList: response.countries));
      } else {
        emit(state.copyWith(
            getCovidSummaryARS: ApiRequestStatusFailure(response.errorCode,
                response.message ?? StringsResource.STR_STH_WRONG)));
        emit(state.copyWith(
            getCovidSummaryARS: const InitialApiRequestStatus()));
      }
    }).catchError((e) {
      Utils.console("Exception: $e");
      emit(state.copyWith(getCovidSummaryARS: const InitialApiRequestStatus()));
    });
  }

  /// Method to handle search functionality.
  Future<void> _onSearchCountry(Emitter emit, _SearchCountry event) async {
    if (event.query.isNotEmpty) {
      final suggestions = state.allCountriesList?.where((country) {
        final countryName = country.country?.toLowerCase();
        final input = event.query.toLowerCase();
        return countryName?.contains(input) ?? false;
      }).toList();
      if (suggestions?.isNotEmpty == true) {
        emit(
            state.copyWith(filteredList: suggestions, isSearchNotFound: false));
      } else {
        emit(state.copyWith(isSearchNotFound: true));
      }
    } else {
      emit(state.copyWith(filteredList: List.empty(), isSearchNotFound: false));
    }
  }

  /// Method to reset states used in this bloc.
  Future<void> _onResetStates(Emitter emit, _ResetStates event) async {
    emit(state.copyWith(
        filteredList: List.empty(),
        isSearchNotFound: false,
        getCovidSummaryARS: const InitialApiRequestStatus()));
  }
}
