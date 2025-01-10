part of 'posts_bloc.dart';

/// Freezed 라이브러리 사용
/// 작성시에는 Bloc의 part 클래스로 작성하여 dart 파일을 분리하여 사용
/// 각 Bloc에서 사용하는 이벤트를 정의
/// Created on 2025-01-06
@freezed
class PostsEvent with _$PostsEvent {
  const factory PostsEvent.getList() = _PostsGetList;
}
