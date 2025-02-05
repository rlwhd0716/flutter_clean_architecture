import 'package:freezed_annotation/freezed_annotation.dart';

part 'sido_response.freezed.dart';
part 'sido_response.g.dart';

@freezed
class SidoResponse with _$SidoResponse {
  factory SidoResponse({
    required String? code,
    required String? codeDescriptor,
    required String? codeName,
    required String? upperCode,
  }) = _SidoResponse;

  factory SidoResponse.fromJson(Map<String, dynamic> json) =>
      _$SidoResponseFromJson(json);
}
