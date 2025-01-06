import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostListUseCase _postListUseCase;

  PostsBloc(
    this._postListUseCase,
  ) : super(PostsState()) {
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
      await _postListUseCase.execute('');
      emit(state.copyWith(status: PostsStatus.success));
    } catch (e) {
      emit(state.copyWith(status: PostsStatus.failure));
    }
  }
}
