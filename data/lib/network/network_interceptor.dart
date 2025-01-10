import 'dart:async';

import 'package:chopper/chopper.dart';

/**
 * Chopper Interceptor
 * Request의 파라미터를 수정할 수 있음
 * 필요한 경우 Headers를 수정하여 API 요청가능
 * 외부 솔루션의 API Key를 여기서 설정
 * Created On 2025-01-03
 **/
class NetworkInterceptor implements Interceptor {
  NetworkInterceptor();

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain) async {
    final updatedParameters =
        Map<String, dynamic>.from(chain.request.parameters);
    updatedParameters['api_key'] = '';
    updatedParameters['language'] = 'ko-KR';

    final updatedRequest =
        chain.request.copyWith(parameters: updatedParameters);
    final response = await chain.proceed(updatedRequest);

    return response;
  }
}
