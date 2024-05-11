// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCovidSummary,
    required TResult Function(String query) searchCountry,
    required TResult Function() resetStates,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCovidSummary,
    TResult? Function(String query)? searchCountry,
    TResult? Function()? resetStates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCovidSummary,
    TResult Function(String query)? searchCountry,
    TResult Function()? resetStates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCovidSummary value) getCovidSummary,
    required TResult Function(_SearchCountry value) searchCountry,
    required TResult Function(_ResetStates value) resetStates,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCovidSummary value)? getCovidSummary,
    TResult? Function(_SearchCountry value)? searchCountry,
    TResult? Function(_ResetStates value)? resetStates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCovidSummary value)? getCovidSummary,
    TResult Function(_SearchCountry value)? searchCountry,
    TResult Function(_ResetStates value)? resetStates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCovidSummaryImplCopyWith<$Res> {
  factory _$$GetCovidSummaryImplCopyWith(_$GetCovidSummaryImpl value,
          $Res Function(_$GetCovidSummaryImpl) then) =
      __$$GetCovidSummaryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCovidSummaryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCovidSummaryImpl>
    implements _$$GetCovidSummaryImplCopyWith<$Res> {
  __$$GetCovidSummaryImplCopyWithImpl(
      _$GetCovidSummaryImpl _value, $Res Function(_$GetCovidSummaryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCovidSummaryImpl implements _GetCovidSummary {
  const _$GetCovidSummaryImpl();

  @override
  String toString() {
    return 'HomeEvent.getCovidSummary()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCovidSummaryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCovidSummary,
    required TResult Function(String query) searchCountry,
    required TResult Function() resetStates,
  }) {
    return getCovidSummary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCovidSummary,
    TResult? Function(String query)? searchCountry,
    TResult? Function()? resetStates,
  }) {
    return getCovidSummary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCovidSummary,
    TResult Function(String query)? searchCountry,
    TResult Function()? resetStates,
    required TResult orElse(),
  }) {
    if (getCovidSummary != null) {
      return getCovidSummary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCovidSummary value) getCovidSummary,
    required TResult Function(_SearchCountry value) searchCountry,
    required TResult Function(_ResetStates value) resetStates,
  }) {
    return getCovidSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCovidSummary value)? getCovidSummary,
    TResult? Function(_SearchCountry value)? searchCountry,
    TResult? Function(_ResetStates value)? resetStates,
  }) {
    return getCovidSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCovidSummary value)? getCovidSummary,
    TResult Function(_SearchCountry value)? searchCountry,
    TResult Function(_ResetStates value)? resetStates,
    required TResult orElse(),
  }) {
    if (getCovidSummary != null) {
      return getCovidSummary(this);
    }
    return orElse();
  }
}

abstract class _GetCovidSummary implements HomeEvent {
  const factory _GetCovidSummary() = _$GetCovidSummaryImpl;
}

/// @nodoc
abstract class _$$SearchCountryImplCopyWith<$Res> {
  factory _$$SearchCountryImplCopyWith(
          _$SearchCountryImpl value, $Res Function(_$SearchCountryImpl) then) =
      __$$SearchCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchCountryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchCountryImpl>
    implements _$$SearchCountryImplCopyWith<$Res> {
  __$$SearchCountryImplCopyWithImpl(
      _$SearchCountryImpl _value, $Res Function(_$SearchCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchCountryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCountryImpl implements _SearchCountry {
  const _$SearchCountryImpl({this.query = ""});

  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'HomeEvent.searchCountry(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCountryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCountryImplCopyWith<_$SearchCountryImpl> get copyWith =>
      __$$SearchCountryImplCopyWithImpl<_$SearchCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCovidSummary,
    required TResult Function(String query) searchCountry,
    required TResult Function() resetStates,
  }) {
    return searchCountry(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCovidSummary,
    TResult? Function(String query)? searchCountry,
    TResult? Function()? resetStates,
  }) {
    return searchCountry?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCovidSummary,
    TResult Function(String query)? searchCountry,
    TResult Function()? resetStates,
    required TResult orElse(),
  }) {
    if (searchCountry != null) {
      return searchCountry(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCovidSummary value) getCovidSummary,
    required TResult Function(_SearchCountry value) searchCountry,
    required TResult Function(_ResetStates value) resetStates,
  }) {
    return searchCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCovidSummary value)? getCovidSummary,
    TResult? Function(_SearchCountry value)? searchCountry,
    TResult? Function(_ResetStates value)? resetStates,
  }) {
    return searchCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCovidSummary value)? getCovidSummary,
    TResult Function(_SearchCountry value)? searchCountry,
    TResult Function(_ResetStates value)? resetStates,
    required TResult orElse(),
  }) {
    if (searchCountry != null) {
      return searchCountry(this);
    }
    return orElse();
  }
}

abstract class _SearchCountry implements HomeEvent {
  const factory _SearchCountry({final String query}) = _$SearchCountryImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchCountryImplCopyWith<_$SearchCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStatesImplCopyWith<$Res> {
  factory _$$ResetStatesImplCopyWith(
          _$ResetStatesImpl value, $Res Function(_$ResetStatesImpl) then) =
      __$$ResetStatesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStatesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ResetStatesImpl>
    implements _$$ResetStatesImplCopyWith<$Res> {
  __$$ResetStatesImplCopyWithImpl(
      _$ResetStatesImpl _value, $Res Function(_$ResetStatesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStatesImpl implements _ResetStates {
  const _$ResetStatesImpl();

  @override
  String toString() {
    return 'HomeEvent.resetStates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStatesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCovidSummary,
    required TResult Function(String query) searchCountry,
    required TResult Function() resetStates,
  }) {
    return resetStates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCovidSummary,
    TResult? Function(String query)? searchCountry,
    TResult? Function()? resetStates,
  }) {
    return resetStates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCovidSummary,
    TResult Function(String query)? searchCountry,
    TResult Function()? resetStates,
    required TResult orElse(),
  }) {
    if (resetStates != null) {
      return resetStates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCovidSummary value) getCovidSummary,
    required TResult Function(_SearchCountry value) searchCountry,
    required TResult Function(_ResetStates value) resetStates,
  }) {
    return resetStates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCovidSummary value)? getCovidSummary,
    TResult? Function(_SearchCountry value)? searchCountry,
    TResult? Function(_ResetStates value)? resetStates,
  }) {
    return resetStates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCovidSummary value)? getCovidSummary,
    TResult Function(_SearchCountry value)? searchCountry,
    TResult Function(_ResetStates value)? resetStates,
    required TResult orElse(),
  }) {
    if (resetStates != null) {
      return resetStates(this);
    }
    return orElse();
  }
}

abstract class _ResetStates implements HomeEvent {
  const factory _ResetStates() = _$ResetStatesImpl;
}

/// @nodoc
mixin _$HomeState {
  ApiRequestStatus get getCovidSummaryARS => throw _privateConstructorUsedError;
  List<CountriesModel>? get allCountriesList =>
      throw _privateConstructorUsedError;
  List<CountriesModel>? get filteredList => throw _privateConstructorUsedError;
  bool get isSearchNotFound => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ApiRequestStatus getCovidSummaryARS,
            List<CountriesModel>? allCountriesList,
            List<CountriesModel>? filteredList,
            bool isSearchNotFound)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ApiRequestStatus getCovidSummaryARS,
            List<CountriesModel>? allCountriesList,
            List<CountriesModel>? filteredList,
            bool isSearchNotFound)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ApiRequestStatus getCovidSummaryARS,
            List<CountriesModel>? allCountriesList,
            List<CountriesModel>? filteredList,
            bool isSearchNotFound)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {ApiRequestStatus getCovidSummaryARS,
      List<CountriesModel>? allCountriesList,
      List<CountriesModel>? filteredList,
      bool isSearchNotFound});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCovidSummaryARS = null,
    Object? allCountriesList = freezed,
    Object? filteredList = freezed,
    Object? isSearchNotFound = null,
  }) {
    return _then(_value.copyWith(
      getCovidSummaryARS: null == getCovidSummaryARS
          ? _value.getCovidSummaryARS
          : getCovidSummaryARS // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      allCountriesList: freezed == allCountriesList
          ? _value.allCountriesList
          : allCountriesList // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
      filteredList: freezed == filteredList
          ? _value.filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
      isSearchNotFound: null == isSearchNotFound
          ? _value.isSearchNotFound
          : isSearchNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiRequestStatus getCovidSummaryARS,
      List<CountriesModel>? allCountriesList,
      List<CountriesModel>? filteredList,
      bool isSearchNotFound});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getCovidSummaryARS = null,
    Object? allCountriesList = freezed,
    Object? filteredList = freezed,
    Object? isSearchNotFound = null,
  }) {
    return _then(_$InitialImpl(
      getCovidSummaryARS: null == getCovidSummaryARS
          ? _value.getCovidSummaryARS
          : getCovidSummaryARS // ignore: cast_nullable_to_non_nullable
              as ApiRequestStatus,
      allCountriesList: freezed == allCountriesList
          ? _value._allCountriesList
          : allCountriesList // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
      filteredList: freezed == filteredList
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
      isSearchNotFound: null == isSearchNotFound
          ? _value.isSearchNotFound
          : isSearchNotFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.getCovidSummaryARS = const InitialApiRequestStatus(),
      final List<CountriesModel>? allCountriesList = const [],
      final List<CountriesModel>? filteredList = const [],
      this.isSearchNotFound = false})
      : _allCountriesList = allCountriesList,
        _filteredList = filteredList;

  @override
  @JsonKey()
  final ApiRequestStatus getCovidSummaryARS;
  final List<CountriesModel>? _allCountriesList;
  @override
  @JsonKey()
  List<CountriesModel>? get allCountriesList {
    final value = _allCountriesList;
    if (value == null) return null;
    if (_allCountriesList is EqualUnmodifiableListView)
      return _allCountriesList;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CountriesModel>? _filteredList;
  @override
  @JsonKey()
  List<CountriesModel>? get filteredList {
    final value = _filteredList;
    if (value == null) return null;
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isSearchNotFound;

  @override
  String toString() {
    return 'HomeState.initial(getCovidSummaryARS: $getCovidSummaryARS, allCountriesList: $allCountriesList, filteredList: $filteredList, isSearchNotFound: $isSearchNotFound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.getCovidSummaryARS, getCovidSummaryARS) ||
                other.getCovidSummaryARS == getCovidSummaryARS) &&
            const DeepCollectionEquality()
                .equals(other._allCountriesList, _allCountriesList) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            (identical(other.isSearchNotFound, isSearchNotFound) ||
                other.isSearchNotFound == isSearchNotFound));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getCovidSummaryARS,
      const DeepCollectionEquality().hash(_allCountriesList),
      const DeepCollectionEquality().hash(_filteredList),
      isSearchNotFound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ApiRequestStatus getCovidSummaryARS,
            List<CountriesModel>? allCountriesList,
            List<CountriesModel>? filteredList,
            bool isSearchNotFound)
        initial,
  }) {
    return initial(
        getCovidSummaryARS, allCountriesList, filteredList, isSearchNotFound);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ApiRequestStatus getCovidSummaryARS,
            List<CountriesModel>? allCountriesList,
            List<CountriesModel>? filteredList,
            bool isSearchNotFound)?
        initial,
  }) {
    return initial?.call(
        getCovidSummaryARS, allCountriesList, filteredList, isSearchNotFound);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ApiRequestStatus getCovidSummaryARS,
            List<CountriesModel>? allCountriesList,
            List<CountriesModel>? filteredList,
            bool isSearchNotFound)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          getCovidSummaryARS, allCountriesList, filteredList, isSearchNotFound);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final ApiRequestStatus getCovidSummaryARS,
      final List<CountriesModel>? allCountriesList,
      final List<CountriesModel>? filteredList,
      final bool isSearchNotFound}) = _$InitialImpl;

  @override
  ApiRequestStatus get getCovidSummaryARS;
  @override
  List<CountriesModel>? get allCountriesList;
  @override
  List<CountriesModel>? get filteredList;
  @override
  bool get isSearchNotFound;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
