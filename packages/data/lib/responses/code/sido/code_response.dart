import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_response.freezed.dart';
part 'code_response.g.dart';

@freezed
class CodeResponse with _$CodeResponse {
  factory CodeResponse({
    required String? code,
    required String? codeDescriptor,
    required String? codeName,
    required String? upperCode,
  }) = _CodeResponse;

  factory CodeResponse.fromJson(Map<String, dynamic> json) =>
      _$CodeResponseFromJson(json);
}
