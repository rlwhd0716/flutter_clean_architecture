import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@Freezed(genericArgumentFactories: true)
class BaseResponse<T> with _$BaseResponse<T> {
  factory BaseResponse({
    required String resultCode,
    required String resultMsg,
    required int resultSize,
    required int totalSize,
    required T? resultData,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$BaseResponseFromJson<T>(json, fromJsonT);
}
