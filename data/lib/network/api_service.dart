import 'package:chopper/chopper.dart';
import 'package:data/converter/response_converter.dart';

import '../responses/responses.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  static ApiService create(final ChopperClient client) => _$ApiService(client);

  @FactoryConverter(response: ResponseConverter.postsResponse)
  @Get(path: '/posts')
  Future<Response<List<Posts>>> getPosts();
}
