import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import '../responses/responses.dart';

/**
 * Restful API
 * Json To Model Converter
 * Created On 2025-01-03
 **/
class ResponseConverter {
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
