import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

/// 플러터 상태관리 라이브러리 활용
/// 각 이벤트와 상태를 정의
/// Bloc에 등록하고 이벤트 발생 후 상태에 따라 UI 변경 됨
/// 이벤트와 상태는 freezed를 사용해 정의하고 Build Runner로 코드 생성
/// Created on 2025-01-06
@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostListUseCase _postListUseCase;

  /// 생성자를 초기화하여
  PostsBloc(
    this._postListUseCase,
  ) : super(const PostsState()) {
    on<PostsEvent>((event, emit) {
      event.mapOrNull(getList: (event) => _getList(event, emit));
    });
  }

  void _getList(
    _PostsGetList event,
    Emitter<PostsState> emit,
  ) async {
    emit(state.copyWith(status: PostsStatus.loading));

    try {
      await _postListUseCase.execute(null);
      emit(state.copyWith(status: PostsStatus.success));
    } catch (e) {
      emit(state.copyWith(status: PostsStatus.failure));
    }
  }
}
