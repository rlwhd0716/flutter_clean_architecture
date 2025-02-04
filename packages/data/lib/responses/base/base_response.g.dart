// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl<T> _$$BaseResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseResponseImpl<T>(
      resultCode: json['resultCode'] as String,
      resultMsg: json['resultMsg'] as String,
      resultSize: (json['resultSize'] as num).toInt(),
      totalSize: (json['totalSize'] as num).toInt(),
      resultData:
          (json['resultData'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$BaseResponseImplToJson<T>(
  _$BaseResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'resultMsg': instance.resultMsg,
      'resultSize': instance.resultSize,
      'totalSize': instance.totalSize,
      'resultData': instance.resultData?.map(toJsonT).toList(),
    };
