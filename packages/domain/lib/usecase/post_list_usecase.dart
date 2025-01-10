import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:injectable/injectable.dart';

/// ex) 게시물 리스트를 가져오는 것에 대한 행동을 정의.
/// Request 파라미터가 존재하지 않는 경우에는 In을 void로 작성
/// execute 할 때는 null을 입력함
/// Created On 2025-01-06
@injectable
class PostListUseCase implements BaseUseCase<void, List<PostModel>> {
  final PostsRepository _postsRepository;

  PostListUseCase(this._postsRepository);

  @override
  Future<Either<String, List<PostModel>>> execute(void input) async {
    return await _postsRepository.getPosts();
  }
}
