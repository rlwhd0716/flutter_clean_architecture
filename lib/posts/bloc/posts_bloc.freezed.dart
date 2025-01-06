// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsGetList value) getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostsGetList value)? getList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsGetList value)? getList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsEventCopyWith<$Res> {
  factory $PostsEventCopyWith(
          PostsEvent value, $Res Function(PostsEvent) then) =
      _$PostsEventCopyWithImpl<$Res, PostsEvent>;
}

/// @nodoc
class _$PostsEventCopyWithImpl<$Res, $Val extends PostsEvent>
    implements $PostsEventCopyWith<$Res> {
  _$PostsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PostsGetListImplCopyWith<$Res> {
  factory _$$PostsGetListImplCopyWith(
          _$PostsGetListImpl value, $Res Function(_$PostsGetListImpl) then) =
      __$$PostsGetListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsGetListImplCopyWithImpl<$Res>
    extends _$PostsEventCopyWithImpl<$Res, _$PostsGetListImpl>
    implements _$$PostsGetListImplCopyWith<$Res> {
  __$$PostsGetListImplCopyWithImpl(
      _$PostsGetListImpl _value, $Res Function(_$PostsGetListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PostsGetListImpl implements _PostsGetList {
  const _$PostsGetListImpl();

  @override
  String toString() {
    return 'PostsEvent.getList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsGetListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
  }) {
    return getList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getList,
  }) {
    return getList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostsGetList value) getList,
  }) {
    return getList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostsGetList value)? getList,
  }) {
    return getList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostsGetList value)? getList,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(this);
    }
    return orElse();
  }
}

abstract class _PostsGetList implements PostsEvent {
  const factory _PostsGetList() = _$PostsGetListImpl;
}

/// @nodoc
mixin _$PostsState {
  PostsStatus get status => throw _privateConstructorUsedError;
  PostModel? get posts => throw _privateConstructorUsedError;

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostsStateCopyWith<PostsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsStateCopyWith<$Res> {
  factory $PostsStateCopyWith(
          PostsState value, $Res Function(PostsState) then) =
      _$PostsStateCopyWithImpl<$Res, PostsState>;
  @useResult
  $Res call({PostsStatus status, PostModel? posts});
}

/// @nodoc
class _$PostsStateCopyWithImpl<$Res, $Val extends PostsState>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostsStatus,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostsStateImplCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory _$$PostsStateImplCopyWith(
          _$PostsStateImpl value, $Res Function(_$PostsStateImpl) then) =
      __$$PostsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostsStatus status, PostModel? posts});
}

/// @nodoc
class __$$PostsStateImplCopyWithImpl<$Res>
    extends _$PostsStateCopyWithImpl<$Res, _$PostsStateImpl>
    implements _$$PostsStateImplCopyWith<$Res> {
  __$$PostsStateImplCopyWithImpl(
      _$PostsStateImpl _value, $Res Function(_$PostsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? posts = freezed,
  }) {
    return _then(_$PostsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostsStatus,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as PostModel?,
    ));
  }
}

/// @nodoc

class _$PostsStateImpl extends _PostsState {
  const _$PostsStateImpl({this.status = PostsStatus.loading, this.posts})
      : super._();

  @override
  @JsonKey()
  final PostsStatus status;
  @override
  final PostModel? posts;

  @override
  String toString() {
    return 'PostsState(status: $status, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, posts);

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      __$$PostsStateImplCopyWithImpl<_$PostsStateImpl>(this, _$identity);
}

abstract class _PostsState extends PostsState {
  const factory _PostsState(
      {final PostsStatus status, final PostModel? posts}) = _$PostsStateImpl;
  const _PostsState._() : super._();

  @override
  PostsStatus get status;
  @override
  PostModel? get posts;

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostsStateImplCopyWith<_$PostsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
