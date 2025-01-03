import 'api_provider.dart';

class ApiClient {
  late final ApiProviderFactory apiProvider;

  ApiClient(ApiType apiType) {
    apiProvider = ApiProviderFactory(apiType);
  }
}
