import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:data/translator/translator.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

/// Posts Repository Implements
/// Domain의 Repository를 상속하여 구현
/// DTO (Translator)를 사용하여 Domain 모델로 변경
/// 여기서 dynamic 을 모델로 변경하여 Domain에서 사용할 수 있도록 하거나, List화 하여 전달함
/// Created On 2025-01-03
@injectable
class PostsRepositoryImpl implements PostsRepository {
  final RemoteDataSource _remote;

  PostsRepositoryImpl(this._remote);

  // TODO 공통 Exception 처리 함수 구현 필요함.
  @override
  Future<Either<String, List<PostModel>>> getPosts() async {
    try {
      final List<PostsResponse> responses = await _remote.getPosts();
      List<PostModel> models = [];

      for (var response in responses) {
        models.add(response.toDomain());
      }

      return Right(models);
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
