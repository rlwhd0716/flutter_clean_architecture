import 'package:chopper/chopper.dart';
import 'package:data/data.dart';

import 'api_error.dart';

abstract class ApiResult<T> {
  static const String _jsonNodeData = "data";
  static const String successCode = "100";
  static const String _jsonNodeErrors = "errors";

  static ApiResult<T> fromResponseObject<T>(
    Response<BaseResponse> response,
    T Function(Map<String, dynamic>) mapper,
  ) {
    final responseData = response.body;

    if (responseData?.resultCode == successCode) {
      final data = responseData?.resultData;
      return Success(mapper(data!.first));
    } else if (responseData?.resultCode != successCode) {
      return ServerError.fromResponse(response);
    } else {
      return InternalError();
    }
  }

  static ApiResult<List<T>> fromResponse<T>(
    Response<BaseResponse> response,
    T Function(Map<String, dynamic>) mapper,
  ) {
    final responseData = response.body;

    if (responseData?.resultCode == successCode) {
      final List<T> list = [];

      if (responseData?.resultData is List<dynamic>) {
        final datas = responseData?.resultData;
        for (var data in datas) {
          list.add(mapper(data));
        }
      } else {
        list.add(mapper(responseData?.resultData));
      }

      return Success(list);
    } else if (responseData?.resultCode != successCode) {
      return ServerError.fromResponse(response);
    } else {
      return InternalError();
    }
  }
}

class Success<T> extends ApiResult<T> {
  final T data;

  Success(this.data);
}

class Failed<T> extends ApiResult<T> {
  List<ApiError> errors;

  Failed(this.errors);
}

class ServerError<T> extends Failed<T> {
  static const String _jsonNodeErrors = "errors";

  ServerError(List<ApiError> errors) : super(errors);

  static ServerError<T> fromResponse<T>(Response response) {
    return ServerError((response.body[_jsonNodeErrors] as List)
        .map((e) => ApiError.fromJson(e))
        .toList());
  }
}

class NetworkError<T> extends Failed<T> {
  NetworkError(List<ApiError> errors) : super(errors);
}

class InternalError<T> extends Failed<T> {
  InternalError() : super(List.empty());
}
