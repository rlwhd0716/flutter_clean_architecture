import 'package:data/data.dart';
import 'package:data/translator/repository_result.dart';
import 'package:data/translator/translator.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';

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
    return repositoryResult<CodeResponse, CodeModel>(
      await _remote.getCodeSido(),
      (response) => response.toDomain(),
    );
  }
}
