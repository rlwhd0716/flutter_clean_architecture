import 'package:dartz/dartz.dart';
import 'package:domain/models/models.dart';

/// Code Repository
/// Interface의 역할을 하며,
/// Left는 Exception에 대한 정의
/// Right는 Response에 대한 정의
/// Created On 2025-02-06
abstract class CodeRepository {
  Future<Either<String, List<CodeModel>>> getSido();
}
