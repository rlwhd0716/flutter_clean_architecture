import 'package:chopper/chopper.dart';
import 'package:data/converter/response_converter.dart';
import 'package:data/model/posts/posts.dart';
import 'package:data/network/network_interceptor.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @FactoryConverter(response: ResponseConverter.postsResponse)
  @Get(path: '/posts')
  Future<Response<List<Posts>>> getPosts();

  static ApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.parse('https://jsonplaceholder.typicode.com'),
      services: [
        _$ApiService(),
      ],
      interceptors: [
        NetworkInterceptor(),
      ],
    );
    return _$ApiService(client);
  }
}
