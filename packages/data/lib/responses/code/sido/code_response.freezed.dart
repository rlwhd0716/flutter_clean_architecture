// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeResponse _$CodeResponseFromJson(Map<String, dynamic> json) {
  return _CodeResponse.fromJson(json);
}

/// @nodoc
mixin _$CodeResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get codeDescriptor => throw _privateConstructorUsedError;
  String? get codeName => throw _privateConstructorUsedError;
  String? get upperCode => throw _privateConstructorUsedError;

  /// Serializes this CodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CodeResponseCopyWith<CodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeResponseCopyWith<$Res> {
  factory $CodeResponseCopyWith(
          CodeResponse value, $Res Function(CodeResponse) then) =
      _$CodeResponseCopyWithImpl<$Res, CodeResponse>;
  @useResult
  $Res call(
      {String? code,
      String? codeDescriptor,
      String? codeName,
      String? upperCode});
}

/// @nodoc
class _$CodeResponseCopyWithImpl<$Res, $Val extends CodeResponse>
    implements $CodeResponseCopyWith<$Res> {
  _$CodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CodeResponse
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
abstract class _$$CodeResponseImplCopyWith<$Res>
    implements $CodeResponseCopyWith<$Res> {
  factory _$$CodeResponseImplCopyWith(
          _$CodeResponseImpl value, $Res Function(_$CodeResponseImpl) then) =
      __$$CodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      String? codeDescriptor,
      String? codeName,
      String? upperCode});
}

/// @nodoc
class __$$CodeResponseImplCopyWithImpl<$Res>
    extends _$CodeResponseCopyWithImpl<$Res, _$CodeResponseImpl>
    implements _$$CodeResponseImplCopyWith<$Res> {
  __$$CodeResponseImplCopyWithImpl(
      _$CodeResponseImpl _value, $Res Function(_$CodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? codeDescriptor = freezed,
    Object? codeName = freezed,
    Object? upperCode = freezed,
  }) {
    return _then(_$CodeResponseImpl(
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
class _$CodeResponseImpl implements _CodeResponse {
  _$CodeResponseImpl(
      {required this.code,
      required this.codeDescriptor,
      required this.codeName,
      required this.upperCode});

  factory _$CodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeResponseImplFromJson(json);

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
    return 'CodeResponse(code: $code, codeDescriptor: $codeDescriptor, codeName: $codeName, upperCode: $upperCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeResponseImpl &&
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

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeResponseImplCopyWith<_$CodeResponseImpl> get copyWith =>
      __$$CodeResponseImplCopyWithImpl<_$CodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeResponseImplToJson(
      this,
    );
  }
}

abstract class _CodeResponse implements CodeResponse {
  factory _CodeResponse(
      {required final String? code,
      required final String? codeDescriptor,
      required final String? codeName,
      required final String? upperCode}) = _$CodeResponseImpl;

  factory _CodeResponse.fromJson(Map<String, dynamic> json) =
      _$CodeResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get codeDescriptor;
  @override
  String? get codeName;
  @override
  String? get upperCode;

  /// Create a copy of CodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeResponseImplCopyWith<_$CodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
