import 'package:chopper/chopper.dart';

import 'api_error.dart';

abstract class ApiResult<T> {
  static const String _jsonNodeData = "data";
  static const String _jsonNodeErrors = "errors";

  static ApiResult<T> fromResponse<T>(
      Response response, T Function(Map<String, dynamic>) mapper) {
    final responseData = response.body;

    if (responseData[_jsonNodeErrors] != null) {
      return ServerError.fromResponse(response);
    } else if (responseData[_jsonNodeData] != null) {
      return Success(mapper(response.body[_jsonNodeData]));
    } else {
      return InternalError();
    }
  }

  static ApiResult<List<T>> fromResponseList<T>(
      Response response, T Function(Map<String, dynamic>) mapper) {
    final responseData = response.body;

    if (responseData[_jsonNodeErrors] != null) {
      return ServerError.fromResponse(response);
    } else if (responseData[_jsonNodeData] != null) {
      final List<T> list = [];
      for (var result in response.body[_jsonNodeData]) {
        list.add(mapper(result));
      }
      return Success(list);
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
