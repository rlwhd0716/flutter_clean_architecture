import 'package:data/data.dart';
import 'package:domain/domain.dart';

extension PostsResponseTranslator on PostsResponse {
  PostModel toDomain() {
    return PostModel(userId, id, title, body);
  }
}
