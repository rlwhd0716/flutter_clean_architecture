import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_response.freezed.dart';
part 'posts_response.g.dart';

/**
 * Posts Response
 * API에서 받아온 데이터를 표현할 Response 모델
 * Freezed를 사용하여 하위 구현체 사용
 * 하위 구현체는 Build Runner에서 자동생성
 * Created On 2025-01-03
 **/

@freezed
class PostsResponse with _$PostsResponse {
  factory PostsResponse({
    required int? userId,
    required int? id,
    required String? title,
    required String? body,
  }) = _PostsResponse;

  factory PostsResponse.fromJson(Map<String, dynamic> json) =>
      _$PostsResponseFromJson(json);
}
