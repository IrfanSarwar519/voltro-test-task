// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlobalModel _$GlobalModelFromJson(Map<String, dynamic> json) {
  return _GlobalModel.fromJson(json);
}

/// @nodoc
mixin _$GlobalModel {
  @JsonKey(name: 'NewConfirmed')
  int? get newConfirmed => throw _privateConstructorUsedError;

  @JsonKey(name: 'TotalConfirmed')
  int? get totalConfirmed => throw _privateConstructorUsedError;

  @JsonKey(name: 'NewDeaths')
  int? get newDeaths => throw _privateConstructorUsedError;

  @JsonKey(name: 'TotalDeaths')
  int? get totalDeaths => throw _privateConstructorUsedError;

  @JsonKey(name: 'NewRecovered')
  int? get newRecovered => throw _privateConstructorUsedError;

  @JsonKey(name: 'TotalRecovered')
  int? get totalRecovered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalModelCopyWith<GlobalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalModelCopyWith<$Res> {
  factory $GlobalModelCopyWith(
          GlobalModel value, $Res Function(GlobalModel) then) =
      _$GlobalModelCopyWithImpl<$Res, GlobalModel>;

  @useResult
  $Res call(
      {@JsonKey(name: 'NewConfirmed') int? newConfirmed,
      @JsonKey(name: 'TotalConfirmed') int? totalConfirmed,
      @JsonKey(name: 'NewDeaths') int? newDeaths,
      @JsonKey(name: 'TotalDeaths') int? totalDeaths,
      @JsonKey(name: 'NewRecovered') int? newRecovered,
      @JsonKey(name: 'TotalRecovered') int? totalRecovered});
}

/// @nodoc
class _$GlobalModelCopyWithImpl<$Res, $Val extends GlobalModel>
    implements $GlobalModelCopyWith<$Res> {
  _$GlobalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newConfirmed = freezed,
    Object? totalConfirmed = freezed,
    Object? newDeaths = freezed,
    Object? totalDeaths = freezed,
    Object? newRecovered = freezed,
    Object? totalRecovered = freezed,
  }) {
    return _then(_value.copyWith(
      newConfirmed: freezed == newConfirmed
          ? _value.newConfirmed
          : newConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      totalConfirmed: freezed == totalConfirmed
          ? _value.totalConfirmed
          : totalConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      newDeaths: freezed == newDeaths
          ? _value.newDeaths
          : newDeaths // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDeaths: freezed == totalDeaths
          ? _value.totalDeaths
          : totalDeaths // ignore: cast_nullable_to_non_nullable
              as int?,
      newRecovered: freezed == newRecovered
          ? _value.newRecovered
          : newRecovered // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecovered: freezed == totalRecovered
          ? _value.totalRecovered
          : totalRecovered // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlobalModelImplCopyWith<$Res>
    implements $GlobalModelCopyWith<$Res> {
  factory _$$GlobalModelImplCopyWith(
          _$GlobalModelImpl value, $Res Function(_$GlobalModelImpl) then) =
      __$$GlobalModelImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'NewConfirmed') int? newConfirmed,
      @JsonKey(name: 'TotalConfirmed') int? totalConfirmed,
      @JsonKey(name: 'NewDeaths') int? newDeaths,
      @JsonKey(name: 'TotalDeaths') int? totalDeaths,
      @JsonKey(name: 'NewRecovered') int? newRecovered,
      @JsonKey(name: 'TotalRecovered') int? totalRecovered});
}

/// @nodoc
class __$$GlobalModelImplCopyWithImpl<$Res>
    extends _$GlobalModelCopyWithImpl<$Res, _$GlobalModelImpl>
    implements _$$GlobalModelImplCopyWith<$Res> {
  __$$GlobalModelImplCopyWithImpl(
      _$GlobalModelImpl _value, $Res Function(_$GlobalModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newConfirmed = freezed,
    Object? totalConfirmed = freezed,
    Object? newDeaths = freezed,
    Object? totalDeaths = freezed,
    Object? newRecovered = freezed,
    Object? totalRecovered = freezed,
  }) {
    return _then(_$GlobalModelImpl(
      newConfirmed: freezed == newConfirmed
          ? _value.newConfirmed
          : newConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      totalConfirmed: freezed == totalConfirmed
          ? _value.totalConfirmed
          : totalConfirmed // ignore: cast_nullable_to_non_nullable
              as int?,
      newDeaths: freezed == newDeaths
          ? _value.newDeaths
          : newDeaths // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDeaths: freezed == totalDeaths
          ? _value.totalDeaths
          : totalDeaths // ignore: cast_nullable_to_non_nullable
              as int?,
      newRecovered: freezed == newRecovered
          ? _value.newRecovered
          : newRecovered // ignore: cast_nullable_to_non_nullable
              as int?,
      totalRecovered: freezed == totalRecovered
          ? _value.totalRecovered
          : totalRecovered // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GlobalModelImpl implements _GlobalModel {
  const _$GlobalModelImpl(
      {@JsonKey(name: 'NewConfirmed') this.newConfirmed,
      @JsonKey(name: 'TotalConfirmed') this.totalConfirmed,
      @JsonKey(name: 'NewDeaths') this.newDeaths,
      @JsonKey(name: 'TotalDeaths') this.totalDeaths,
      @JsonKey(name: 'NewRecovered') this.newRecovered,
      @JsonKey(name: 'TotalRecovered') this.totalRecovered});

  factory _$GlobalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalModelImplFromJson(json);

  @override
  @JsonKey(name: 'NewConfirmed')
  final int? newConfirmed;
  @override
  @JsonKey(name: 'TotalConfirmed')
  final int? totalConfirmed;
  @override
  @JsonKey(name: 'NewDeaths')
  final int? newDeaths;
  @override
  @JsonKey(name: 'TotalDeaths')
  final int? totalDeaths;
  @override
  @JsonKey(name: 'NewRecovered')
  final int? newRecovered;
  @override
  @JsonKey(name: 'TotalRecovered')
  final int? totalRecovered;

  @override
  String toString() {
    return 'GlobalModel(newConfirmed: $newConfirmed, totalConfirmed: $totalConfirmed, newDeaths: $newDeaths, totalDeaths: $totalDeaths, newRecovered: $newRecovered, totalRecovered: $totalRecovered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalModelImpl &&
            (identical(other.newConfirmed, newConfirmed) ||
                other.newConfirmed == newConfirmed) &&
            (identical(other.totalConfirmed, totalConfirmed) ||
                other.totalConfirmed == totalConfirmed) &&
            (identical(other.newDeaths, newDeaths) ||
                other.newDeaths == newDeaths) &&
            (identical(other.totalDeaths, totalDeaths) ||
                other.totalDeaths == totalDeaths) &&
            (identical(other.newRecovered, newRecovered) ||
                other.newRecovered == newRecovered) &&
            (identical(other.totalRecovered, totalRecovered) ||
                other.totalRecovered == totalRecovered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, newConfirmed, totalConfirmed,
      newDeaths, totalDeaths, newRecovered, totalRecovered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalModelImplCopyWith<_$GlobalModelImpl> get copyWith =>
      __$$GlobalModelImplCopyWithImpl<_$GlobalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalModelImplToJson(
      this,
    );
  }
}

abstract class _GlobalModel implements GlobalModel {
  const factory _GlobalModel(
          {@JsonKey(name: 'NewConfirmed') final int? newConfirmed,
          @JsonKey(name: 'TotalConfirmed') final int? totalConfirmed,
          @JsonKey(name: 'NewDeaths') final int? newDeaths,
          @JsonKey(name: 'TotalDeaths') final int? totalDeaths,
          @JsonKey(name: 'NewRecovered') final int? newRecovered,
          @JsonKey(name: 'TotalRecovered') final int? totalRecovered}) =
      _$GlobalModelImpl;

  factory _GlobalModel.fromJson(Map<String, dynamic> json) =
      _$GlobalModelImpl.fromJson;

  @override
  @JsonKey(name: 'NewConfirmed')
  int? get newConfirmed;

  @override
  @JsonKey(name: 'TotalConfirmed')
  int? get totalConfirmed;

  @override
  @JsonKey(name: 'NewDeaths')
  int? get newDeaths;

  @override
  @JsonKey(name: 'TotalDeaths')
  int? get totalDeaths;

  @override
  @JsonKey(name: 'NewRecovered')
  int? get newRecovered;

  @override
  @JsonKey(name: 'TotalRecovered')
  int? get totalRecovered;

  @override
  @JsonKey(ignore: true)
  _$$GlobalModelImplCopyWith<_$GlobalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
