// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ApiService;

  @override
  Future<Response<BaseResponse>> getCodeSido() {
    final Uri $url = Uri.parse('/ELSM_MS/code/sido');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<BaseResponse, BaseResponse>(
      $request,
      responseConverter: ResponseConverter.baseResponse,
    );
  }

  @override
  Future<Response<List<PostsResponse>>> getPosts() {
    final Uri $url = Uri.parse('/posts');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PostsResponse>, PostsResponse>(
      $request,
      responseConverter: ResponseConverter.postsResponse,
    );
  }
}
