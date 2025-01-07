import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:data/translator/translator.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class PostsRepositoryImpl implements PostsRepository {
  final RemoteDataSource _remote;

  PostsRepositoryImpl(this._remote);

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
