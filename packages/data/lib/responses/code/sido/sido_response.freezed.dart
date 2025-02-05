// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sido_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SidoResponse _$SidoResponseFromJson(Map<String, dynamic> json) {
  return _SidoResponse.fromJson(json);
}

/// @nodoc
mixin _$SidoResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get codeDescriptor => throw _privateConstructorUsedError;
  String? get codeName => throw _privateConstructorUsedError;
  String? get upperCode => throw _privateConstructorUsedError;

  /// Serializes this SidoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SidoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SidoResponseCopyWith<SidoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SidoResponseCopyWith<$Res> {
  factory $SidoResponseCopyWith(
          SidoResponse value, $Res Function(SidoResponse) then) =
      _$SidoResponseCopyWithImpl<$Res, SidoResponse>;
  @useResult
  $Res call(
      {String? code,
      String? codeDescriptor,
      String? codeName,
      String? upperCode});
}

/// @nodoc
class _$SidoResponseCopyWithImpl<$Res, $Val extends SidoResponse>
    implements $SidoResponseCopyWith<$Res> {
  _$SidoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SidoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? codeDescriptor = freezed,
    Object? codeName = freezed,
    Object? upperCode = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeDescriptor: freezed == codeDescriptor
          ? _value.codeDescriptor
          : codeDescriptor // ignore: cast_nullable_to_non_nullable
              as String?,
      codeName: freezed == codeName
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String?,
      upperCode: freezed == upperCode
          ? _value.upperCode
          : upperCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SidoResponseImplCopyWith<$Res>
    implements $SidoResponseCopyWith<$Res> {
  factory _$$SidoResponseImplCopyWith(
          _$SidoResponseImpl value, $Res Function(_$SidoResponseImpl) then) =
      __$$SidoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? codeDescriptor,
      String? codeName,
      String? upperCode});
}

/// @nodoc
class __$$SidoResponseImplCopyWithImpl<$Res>
    extends _$SidoResponseCopyWithImpl<$Res, _$SidoResponseImpl>
    implements _$$SidoResponseImplCopyWith<$Res> {
  __$$SidoResponseImplCopyWithImpl(
      _$SidoResponseImpl _value, $Res Function(_$SidoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SidoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? codeDescriptor = freezed,
    Object? codeName = freezed,
    Object? upperCode = freezed,
  }) {
    return _then(_$SidoResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      codeDescriptor: freezed == codeDescriptor
          ? _value.codeDescriptor
          : codeDescriptor // ignore: cast_nullable_to_non_nullable
              as String?,
      codeName: freezed == codeName
          ? _value.codeName
          : codeName // ignore: cast_nullable_to_non_nullable
              as String?,
      upperCode: freezed == upperCode
          ? _value.upperCode
          : upperCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SidoResponseImpl implements _SidoResponse {
  _$SidoResponseImpl(
      {required this.code,
      required this.codeDescriptor,
      required this.codeName,
      required this.upperCode});

  factory _$SidoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SidoResponseImplFromJson(json);

  @override
  final String? code;
  @override
  final String? codeDescriptor;
  @override
  final String? codeName;
  @override
  final String? upperCode;

  @override
  String toString() {
    return 'SidoResponse(code: $code, codeDescriptor: $codeDescriptor, codeName: $codeName, upperCode: $upperCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SidoResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeDescriptor, codeDescriptor) ||
                other.codeDescriptor == codeDescriptor) &&
            (identical(other.codeName, codeName) ||
                other.codeName == codeName) &&
            (identical(other.upperCode, upperCode) ||
                other.upperCode == upperCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, codeDescriptor, codeName, upperCode);

  /// Create a copy of SidoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SidoResponseImplCopyWith<_$SidoResponseImpl> get copyWith =>
      __$$SidoResponseImplCopyWithImpl<_$SidoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SidoResponseImplToJson(
      this,
    );
  }
}

abstract class _SidoResponse implements SidoResponse {
  factory _SidoResponse(
      {required final String? code,
      required final String? codeDescriptor,
      required final String? codeName,
      required final String? upperCode}) = _$SidoResponseImpl;

  factory _SidoResponse.fromJson(Map<String, dynamic> json) =
      _$SidoResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get codeDescriptor;
  @override
  String? get codeName;
  @override
  String? get upperCode;

  /// Create a copy of SidoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SidoResponseImplCopyWith<_$SidoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
