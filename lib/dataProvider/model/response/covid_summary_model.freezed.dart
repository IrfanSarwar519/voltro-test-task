// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'covid_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CovidSummaryModel _$CovidSummaryModelFromJson(Map<String, dynamic> json) {
  return _CovidSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$CovidSummaryModel {
  @JsonKey(name: 'Global')
  GlobalModel? get global => throw _privateConstructorUsedError;

  @JsonKey(name: 'Countries')
  List<CountriesModel>? get countries => throw _privateConstructorUsedError;

  /// This node is used for getting error codes e.g 400, 422 etc.
  int? get errorCode => throw _privateConstructorUsedError;

  /// This node is used for getting error message from server.
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CovidSummaryModelCopyWith<CovidSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CovidSummaryModelCopyWith<$Res> {
  factory $CovidSummaryModelCopyWith(
          CovidSummaryModel value, $Res Function(CovidSummaryModel) then) =
      _$CovidSummaryModelCopyWithImpl<$Res, CovidSummaryModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'Global') GlobalModel? global,
      @JsonKey(name: 'Countries') List<CountriesModel>? countries,
      int? errorCode,
      String? message});

  $GlobalModelCopyWith<$Res>? get global;
}

/// @nodoc
class _$CovidSummaryModelCopyWithImpl<$Res, $Val extends CovidSummaryModel>
    implements $CovidSummaryModelCopyWith<$Res> {
  _$CovidSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? global = freezed,
    Object? countries = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      global: freezed == global
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as GlobalModel?,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalModelCopyWith<$Res>? get global {
    if (_value.global == null) {
      return null;
    }

    return $GlobalModelCopyWith<$Res>(_value.global!, (value) {
      return _then(_value.copyWith(global: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CovidSummaryModelImplCopyWith<$Res>
    implements $CovidSummaryModelCopyWith<$Res> {
  factory _$$CovidSummaryModelImplCopyWith(_$CovidSummaryModelImpl value,
          $Res Function(_$CovidSummaryModelImpl) then) =
      __$$CovidSummaryModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Global') GlobalModel? global,
      @JsonKey(name: 'Countries') List<CountriesModel>? countries,
      int? errorCode,
      String? message});

  @override
  $GlobalModelCopyWith<$Res>? get global;
}

/// @nodoc
class __$$CovidSummaryModelImplCopyWithImpl<$Res>
    extends _$CovidSummaryModelCopyWithImpl<$Res, _$CovidSummaryModelImpl>
    implements _$$CovidSummaryModelImplCopyWith<$Res> {
  __$$CovidSummaryModelImplCopyWithImpl(_$CovidSummaryModelImpl _value,
      $Res Function(_$CovidSummaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? global = freezed,
    Object? countries = freezed,
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CovidSummaryModelImpl(
      global: freezed == global
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as GlobalModel?,
      countries: freezed == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<CountriesModel>?,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CovidSummaryModelImpl implements _CovidSummaryModel {
  const _$CovidSummaryModelImpl(
      {@JsonKey(name: 'Global') this.global,
      @JsonKey(name: 'Countries') final List<CountriesModel>? countries,
      this.errorCode,
      this.message})
      : _countries = countries;

  factory _$CovidSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CovidSummaryModelImplFromJson(json);

  @override
  @JsonKey(name: 'Global')
  final GlobalModel? global;
  final List<CountriesModel>? _countries;

  @override
  @JsonKey(name: 'Countries')
  List<CountriesModel>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// This node is used for getting error codes e.g 400, 422 etc.
  @override
  final int? errorCode;

  /// This node is used for getting error message from server.
  @override
  final String? message;

  @override
  String toString() {
    return 'CovidSummaryModel(global: $global, countries: $countries, errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CovidSummaryModelImpl &&
            (identical(other.global, global) || other.global == global) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, global,
      const DeepCollectionEquality().hash(_countries), errorCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CovidSummaryModelImplCopyWith<_$CovidSummaryModelImpl> get copyWith =>
      __$$CovidSummaryModelImplCopyWithImpl<_$CovidSummaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CovidSummaryModelImplToJson(
      this,
    );
  }
}

abstract class _CovidSummaryModel implements CovidSummaryModel {
  const factory _CovidSummaryModel(
      {@JsonKey(name: 'Global') final GlobalModel? global,
      @JsonKey(name: 'Countries') final List<CountriesModel>? countries,
      final int? errorCode,
      final String? message}) = _$CovidSummaryModelImpl;

  factory _CovidSummaryModel.fromJson(Map<String, dynamic> json) =
      _$CovidSummaryModelImpl.fromJson;

  @override
  @JsonKey(name: 'Global')
  GlobalModel? get global;

  @override
  @JsonKey(name: 'Countries')
  List<CountriesModel>? get countries;

  @override

  /// This node is used for getting error codes e.g 400, 422 etc.
  int? get errorCode;

  @override

  /// This node is used for getting error message from server.
  String? get message;

  @override
  @JsonKey(ignore: true)
  _$$CovidSummaryModelImplCopyWith<_$CovidSummaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
