import 'package:data/data.dart';
import 'package:domain/domain.dart';

/// Translator Extension
/// API에서 받아온 데이터를 Domain 모델로 변형하여 주는 확장 메소드
/// Created On 2025-01-03
extension PostsResponseTranslator on PostsResponse {
  PostModel toDomain() {
    return PostModel(userId, id, title, body);
  }
}

extension CodeResponseTranslator on CodeResponse {
  CodeModel toDomain() {
    return CodeModel(
      code,
      codeDescriptor,
      codeName,
      upperCode,
    );
  }
}
