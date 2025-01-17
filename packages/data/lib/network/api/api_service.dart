import 'package:chopper/chopper.dart';
import 'package:data/converter/response_converter.dart';
import 'package:data/data.dart';

part 'api_service.chopper.dart';

/// Restful API Service
/// Create API Service using Client
/// API를 요청할 컨텍스트를 여기서 설정
/// API요청하는 메소드는 Build Runner에서 자동생성
/// Created On 2025-01-03
@ChopperApi()
abstract class ApiService extends ChopperService {
  static ApiService create(final ChopperClient client) => _$ApiService(client);

  @FactoryConverter(response: ResponseConverter.postsResponse)
  @Get(path: '/posts')
  Future<Response<List<PostsResponse>>> getPosts();
}
