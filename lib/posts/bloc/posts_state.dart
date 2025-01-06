part of 'posts_bloc.dart';

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

extension EditTodoStatusX on PostsStatus {
  bool get isLoadingOrSuccess => [
        PostsStatus.loading,
        PostsStatus.success,
      ].contains(this);
}

@freezed
class PostsState with _$PostsState {
  const PostsState._(); // custom getter 추가를 위한 비공개 빈 생성자

  const factory PostsState({
    @Default(PostsStatus.loading) PostsStatus status,
    PostModel? posts,
  }) = _PostsState;

  bool get isNewTodo => posts == null;
}
