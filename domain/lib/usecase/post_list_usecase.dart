
import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostListUseCase implements BaseUseCase<void, List<PostModel>> {
  final PostsRepository _postsRepository;

  PostListUseCase(this._postsRepository)

  @override
  Future<Either<String, List<PostModel>>> execute(void input) async {
    return await _postsRepository.getPosts();
  }
}