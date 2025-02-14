import 'dart:async';

import 'package:data/network/base/api_result.dart';
import 'package:injectable/injectable.dart';

import '../data.dart';

/// Restful API
/// Remote Data Source Implements
/// Created On 2025-01-03
@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiService _apiService;

  RemoteDataSourceImpl(this._apiService);

  /// BaseResponse 를 사용하지 않고 바로 Body로 받아오는 경우 예시
  /// 하위 모델이 없기 때문에 그대로 Pass, 받아온 Response를 전달함.
  @override
  Future<List<PostsResponse>> getPosts() async {
    final response = await _apiService.getPosts();
    return response.body ?? [];
  }

  /// BaseResponse 를 사용하는 경우 예시
  /// 하위 모델 또한 컨버팅이 필요하기 때문에, 여기에서 fromJson을 실행함.
  /// ApiResult 공통 함수를 통해 기본적으로 List 형태의 데이터를 리턴함.
  @override
  Future<ApiResult<List<CodeResponse>>> getCodeSido() async {
    final response = await _apiService.getCodeSido();
    return ApiResult.fromResponse<CodeResponse>(
      response,
      CodeResponse.fromJson,
    );
  }
}
