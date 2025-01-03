import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_response.freezed.dart';
part 'posts_response.g.dart';

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
