import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:data/network/base/api_result.dart';
import 'package:data/translator/translator.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:util/util.dart';

/// Code Repository Implements
/// Domain의 Repository를 상속하여 구현
/// DTO (Translator)를 사용하여 Domain 모델로 변경
/// 여기서 dynamic 을 모델로 변경하여 Domain에서 사용할 수 있도록 하거나, List화 하여 전달함
/// Created On 2025-02-06
@Injectable(as: CodeRepository)
class CodeRepositoryImpl implements CodeRepository {
  final RemoteDataSource _remote;

  CodeRepositoryImpl(this._remote);

  // TODO 공통 Exception 처리 함수 구현 필요함.
  @override
  Future<Either<String, List<CodeModel>>> getSido() async {
    try {
      var result = await _remote.getCodeSido();
      // print("repoimpl ${base.toJson()}");

      // final List<CodeResponse> responses =
      //     (base.resultData as List<CodeResponse>);
      List<CodeModel> models = [];

      if (result is Success<List<CodeResponse>>) {
        for (var response in result.data) {
          models.add(response.toDomain());
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
    } catch (ex) {
      return Left(ex.toString());
    }
  }
}
