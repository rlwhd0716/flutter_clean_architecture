// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data.dart' as _i633;
import '../data_source/remote_data_source_impl.dart' as _i426;
import '../repository_impl/posts_repository_impl.dart' as _i35;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i633.RemoteDataSource>(
      () => _i426.RemoteDataSourceImpl(gh<_i633.ApiService>()));
  gh.factory<_i494.PostsRepository>(
      () => _i35.PostsRepositoryImpl(gh<_i633.RemoteDataSource>()));
  return getIt;
}
