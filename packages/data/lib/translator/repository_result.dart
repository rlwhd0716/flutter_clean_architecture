import 'package:chopper/chopper.dart';
import 'package:data/network/base/api_result.dart';
import 'package:dartz/dartz.dart';
import 'package:util/extensions/safe_call_extensions.dart';


Future<Either<String, List<M>>> repositoryResult<R, M>(ApiResult result, M Function(R) translator,) async {
  try {
    List<M> models = [];

    if (result is Success<List<R>>) {
      for (var response in result.data) {
        models.add(translator(response));
      }
      return Right(models);
    } else {
      final errMsg =
          result.asOrNull<Failed>()?.errors.firstOrNull()?.message ??
              "API Response Error";
      return Left(errMsg);
    }
  } on ChopperException catch (e) {
    if (e.response != null) {
      if (e.response!.body != null) {
        return Left(e.response!.bodyString);
      } else {
        return Left(e.response!.statusCode.toString());
      }
    } else {
      return Left(e.message);
    }
  } catch(ex) {
    return Left(ex.toString());
  }
}