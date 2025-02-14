// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseImpl _$$BaseResponseImplFromJson(Map<String, dynamic> json) =>
    _$BaseResponseImpl(
      resultCode: json['resultCode'] as String,
      resultMsg: json['resultMsg'] as String,
      resultSize: (json['resultSize'] as num).toInt(),
      totalSize: (json['totalSize'] as num).toInt(),
      resultData: json['resultData'],
    );

Map<String, dynamic> _$$BaseResponseImplToJson(_$BaseResponseImpl instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'resultMsg': instance.resultMsg,
      'resultSize': instance.resultSize,
      'totalSize': instance.totalSize,
      'resultData': instance.resultData,
    };
