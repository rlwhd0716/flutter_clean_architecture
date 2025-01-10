part of 'posts_bloc.dart';

/// 작성시에는 Bloc의 part 클래스로 작성하여 dart 파일을 분리하여 사용

/// 각 Bloc에서 사용하는 상태를 enum으로 정의
/// Created on 2025-01-06
enum PostsStatus {
  // 게시물 없음
  empty,
  // 로딩중
  loading,
  // 목록 요청 중
  fetching,
  // 로드 완료
  success,
  // 데이터 요청 오류
  failure,
}

/// 정의된 상태를 확장 메소드를 활용하여 값을 반환
/// ex) 로딩상태와 성공상태가 리스트에 존재하는가? true or false return
/// Created on 2025-01-06
extension PostsStatusX on PostsStatus {
  bool get isLoadingOrSuccess => [
        PostsStatus.loading,
        PostsStatus.success,
      ].contains(this);
}

/// Freezed 라이브러리 사용
/// 각 Bloc에서 사용하는 상태를 모델화하여 사용
/// 익명함수를 활용하여 추가로 메소드를 구현하여 사용할 수 있음
/// Created on 2025-01-06
@freezed
class PostsState with _$PostsState {
  const PostsState._(); // custom getter 추가를 위한 비공개 빈 생성자

  const factory PostsState({
    @Default(PostsStatus.loading) PostsStatus status,
    PostModel? posts,
  }) = _PostsState;

  bool get isNewTodo => posts == null;
}
