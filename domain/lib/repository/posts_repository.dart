import 'package:dartz/dartz.dart';
import 'package:domain/models/models.dart';

abstract class PostsRepository {
  Future<Either<String, List<PostModel>>> getPosts();
}
