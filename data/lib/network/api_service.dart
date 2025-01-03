import 'package:chopper/chopper.dart';
import 'package:data/converter/response_converter.dart';

import '../data.dart';

part 'api_service.chopper.dart';

/**
 * Restful API Service
 * Create API Service using Client
 * Created On 2025-01-03
 **/
@ChopperApi()
abstract class ApiService extends ChopperService {
  static ApiService create(final ChopperClient client) => _$ApiService(client);

  @FactoryConverter(response: ResponseConverter.postsResponse)
  @Get(path: '/posts')
  Future<Response<List<PostsResponse>>> getPosts();
}
