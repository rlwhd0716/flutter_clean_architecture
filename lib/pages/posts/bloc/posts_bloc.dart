import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

// part 'posts_bloc.freezed.dart';
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
  final SidoListUseCase _sidoListUseCase;

  PostsBloc(this._postListUseCase, this._sidoListUseCase) : super(const LoadingState()) {
    on<GetPostListEvent>(_getPostList);
    on<GetSidoListEvent>(_getSidoList);
  }

  Future<void> _getPostList(
    GetPostListEvent event,
    Emitter<PostsState> emit,
  ) async {
    emit(const LoadingState());

    var uc = await _postListUseCase.execute(null);
    uc.fold(
      (error) => emit(const FailureState()),
      (result) => emit(GetPostListState(result)),
    );
  }

  Future<void> _getSidoList(
      GetSidoListEvent event,
      Emitter<PostsState> emit,
  ) async {
    emit(const LoadingState());

    var uc = await _sidoListUseCase.execute(null);
    uc.fold(
          (error) => emit(const FailureState()),
          (result) => emit(GetSidoListState(result)),
    );
  }
}

/// 생성자를 초기화하여
//   PostsBloc(
//     this._postListUseCase,
//   ) : super(const PostsState()) {
//     on<PostsEvent>((event, emit) {
//       event.mapOrNull(getList: (event) async => await _getList(event, emit));
//     });
//   }
//
//   Future<void> _getList(
//     _PostsGetList event,
//     Emitter<PostsState> emit,
//   ) async {
//     emit(PostsState(status: PostsStatus.loading));
//
//     final uc = await _postListUseCase.execute(null);
//     uc.fold(
//       (error) => emit(state.copyWith(status: PostsStatus.failure)),
//       (result) =>
//           emit(state.copyWith(status: PostsStatus.success, posts: result)),
//     );
//   }
// }
