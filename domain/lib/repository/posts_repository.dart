import 'package:dartz/dartz.dart';
import 'package:domain/models/models.dart';

/// Posts Repository
/// Interface의 역할을 하며,
/// Left는 Exception에 대한 정의
/// Right는 Response에 대한 정의
/// Created On 2025-01-03
abstract class PostsRepository {
  Future<Either<String, List<PostModel>>> getPosts();
}
