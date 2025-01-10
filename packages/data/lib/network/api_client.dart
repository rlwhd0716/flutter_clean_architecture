import 'api_provider.dart';

/// Restful API Client
/// Get Chopper Client
/// Created On 2025-01-03
class ApiClient {
  late final ApiProviderFactory apiProvider;

  ApiClient(ApiType apiType) {
    apiProvider = ApiProviderFactory(apiType);
  }
}
