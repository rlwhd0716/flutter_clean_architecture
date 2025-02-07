import 'package:data/network/base/api_result.dart';

import '../responses/responses.dart';

/// Restful API
/// Remote Data Source
/// Created On 2025-01-03
abstract class RemoteDataSource {
  Future<List<PostsResponse>> getPosts();
  Future<ApiResult<List<CodeResponse>>> getCodeSido();
}
