import 'dart:io';
import 'package:http/io_client.dart' as http;

import 'package:chopper/chopper.dart';
import 'package:data/network/network_interceptor.dart';

enum ApiType { base }

/// Chopper Client Provider Factory
/// Switching by ApiType
/// Created On 2025-01-03
abstract class ApiProviderFactory {
  ChopperClient get getChopper;

  factory ApiProviderFactory(ApiType type) {
    switch (type) {
      case ApiType.base:
        return ApiProvider();
    }
  }
}

/// Chopper Client Provider
/// getChopper after Create Chooper Client
/// Created On 2025-01-03
class ApiProvider implements ApiProviderFactory {
  int apiTimeOut = 60000;
  static late ChopperClient chopper;

  ApiProvider() {
    final c = ChopperClient(
      baseUrl: Uri.parse('http://192.168.15.66:19020'),
      // baseUrl: Uri.parse('https://jsonplaceholder.typicode.com'),
      interceptors: [
        NetworkInterceptor(),
      ],
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 30),
      ),
      converter: JsonConverter(),
    );
    chopper = c;
  }

  @override
  ChopperClient get getChopper => chopper;
}
