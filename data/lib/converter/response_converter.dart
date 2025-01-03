import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:data/model/posts/posts.dart';

class ResponseConverter {
  static FutureOr<Response<List<Posts>>> postsResponse(
    Response<dynamic> response,
  ) async {
    List<Posts> list = [];
    final body = response.body;
    final bodyDecode = json.decode(body as String) as List<dynamic>;
    for (var b in bodyDecode) {
      list.add(Posts.fromJson(b));
    }

    return response.copyWith(body: list);
  }
}
