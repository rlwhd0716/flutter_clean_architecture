// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponse<T> _$BaseResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseResponse<T> {
  String get resultCode => throw _privateConstructorUsedError;
  String get resultMsg => throw _privateConstructorUsedError;
  int get resultSize => throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;
  List<T>? get resultData => throw _privateConstructorUsedError;

  /// Serializes this BaseResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseCopyWith<T, BaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<T, $Res> {
  factory $BaseResponseCopyWith(
          BaseResponse<T> value, $Res Function(BaseResponse<T>) then) =
      _$BaseResponseCopyWithImpl<T, $Res, BaseResponse<T>>;
  @useResult
  $Res call(
      {String resultCode,
      String resultMsg,
      int resultSize,
      int totalSize,
      List<T>? resultData});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<T, $Res, $Val extends BaseResponse<T>>
    implements $BaseResponseCopyWith<T, $Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultMsg = null,
    Object? resultSize = null,
    Object? totalSize = null,
    Object? resultData = freezed,
  }) {
    return _then(_value.copyWith(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
      resultSize: null == resultSize
          ? _value.resultSize
          : resultSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      resultData: freezed == resultData
          ? _value.resultData
          : resultData // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseImplCopyWith<T, $Res>
    implements $BaseResponseCopyWith<T, $Res> {
  factory _$$BaseResponseImplCopyWith(_$BaseResponseImpl<T> value,
          $Res Function(_$BaseResponseImpl<T>) then) =
      __$$BaseResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String resultCode,
      String resultMsg,
      int resultSize,
      int totalSize,
      List<T>? resultData});
}

/// @nodoc
class __$$BaseResponseImplCopyWithImpl<T, $Res>
    extends _$BaseResponseCopyWithImpl<T, $Res, _$BaseResponseImpl<T>>
    implements _$$BaseResponseImplCopyWith<T, $Res> {
  __$$BaseResponseImplCopyWithImpl(
      _$BaseResponseImpl<T> _value, $Res Function(_$BaseResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultCode = null,
    Object? resultMsg = null,
    Object? resultSize = null,
    Object? totalSize = null,
    Object? resultData = freezed,
  }) {
    return _then(_$BaseResponseImpl<T>(
      resultCode: null == resultCode
          ? _value.resultCode
          : resultCode // ignore: cast_nullable_to_non_nullable
              as String,
      resultMsg: null == resultMsg
          ? _value.resultMsg
          : resultMsg // ignore: cast_nullable_to_non_nullable
              as String,
      resultSize: null == resultSize
          ? _value.resultSize
          : resultSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      resultData: freezed == resultData
          ? _value._resultData
          : resultData // ignore: cast_nullable_to_non_nullable
              as List<T>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$BaseResponseImpl<T> implements _BaseResponse<T> {
  _$BaseResponseImpl(
      {required this.resultCode,
      required this.resultMsg,
      required this.resultSize,
      required this.totalSize,
      required final List<T>? resultData})
      : _resultData = resultData;

  factory _$BaseResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseResponseImplFromJson(json, fromJsonT);

  @override
  final String resultCode;
  @override
  final String resultMsg;
  @override
  final int resultSize;
  @override
  final int totalSize;
  final List<T>? _resultData;
  @override
  List<T>? get resultData {
    final value = _resultData;
    if (value == null) return null;
    if (_resultData is EqualUnmodifiableListView) return _resultData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponse<$T>(resultCode: $resultCode, resultMsg: $resultMsg, resultSize: $resultSize, totalSize: $totalSize, resultData: $resultData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseImpl<T> &&
            (identical(other.resultCode, resultCode) ||
                other.resultCode == resultCode) &&
            (identical(other.resultMsg, resultMsg) ||
                other.resultMsg == resultMsg) &&
            (identical(other.resultSize, resultSize) ||
                other.resultSize == resultSize) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            const DeepCollectionEquality()
                .equals(other._resultData, _resultData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, resultCode, resultMsg,
      resultSize, totalSize, const DeepCollectionEquality().hash(_resultData));

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseImplCopyWith<T, _$BaseResponseImpl<T>> get copyWith =>
      __$$BaseResponseImplCopyWithImpl<T, _$BaseResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseResponse<T> implements BaseResponse<T> {
  factory _BaseResponse(
      {required final String resultCode,
      required final String resultMsg,
      required final int resultSize,
      required final int totalSize,
      required final List<T>? resultData}) = _$BaseResponseImpl<T>;

  factory _BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseResponseImpl<T>.fromJson;

  @override
  String get resultCode;
  @override
  String get resultMsg;
  @override
  int get resultSize;
  @override
  int get totalSize;
  @override
  List<T>? get resultData;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseImplCopyWith<T, _$BaseResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
