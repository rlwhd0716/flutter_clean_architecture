import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:data/data.dart';

/// Restful API
/// Json To Model Converter
/// Chopper에서 모델을 사용하기 위해서는 컨버터가 필요함
/// Created On 2025-01-03
class ResponseConverter {
  static FutureOr<Response<dynamic>> baseResponse<T>(
    Response<dynamic> response,
  ) async {
    final body = response.body;
    final jsonData = json.decode(body as String) as dynamic;

    var base = BaseResponse.fromJson(
      jsonData,
      (json) {
        final list = (json as List<dynamic>)
            .map((e) => SidoResponse.fromJson(json as Map<String, dynamic>))
            .toList();
        return list;
      },
    );

    return response.copyWith(body: base);
  }

  static FutureOr<Response<List<PostsResponse>>> postsResponse(
    Response<dynamic> response,
  ) async {
    List<PostsResponse> list = [];
    final body = response.body;
    final bodyDecode = json.decode(body as String) as List<dynamic>;
    for (var b in bodyDecode) {
      list.add(PostsResponse.fromJson(b));
    }

    return response.copyWith(body: list);
  }
}
