// dart format width=80
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
import '../data_source/local_data_source_impl.dart' as _i712;
import '../data_source/remote_data_source_impl.dart' as _i426;
import '../database/app_database.dart' as _i982;
import '../database/dao/code_dao.dart' as _i145;
import '../database/database.dart' as _i660;
import '../repository_impl/code_repository_impl.dart' as _i374;
import '../repository_impl/posts_repository_impl.dart' as _i35;
import 'di.dart' as _i913;

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
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i982.AppDatabase>(() => registerModule.appDatabase);
  gh.factory<_i633.RemoteDataSource>(
      () => _i426.RemoteDataSourceImpl(gh<_i633.ApiService>()));
  gh.factory<_i145.CodeDao>(() => _i145.CodeDao(gh<_i660.AppDatabase>()));
  gh.factory<_i494.PostsRepository>(
      () => _i35.PostsRepositoryImpl(gh<_i633.RemoteDataSource>()));
  gh.factory<_i494.CodeRepository>(
      () => _i374.CodeRepositoryImpl(gh<_i633.RemoteDataSource>()));
  gh.factory<_i633.LocalDataSource>(
      () => _i712.LocalDataSourceImpl(gh<_i145.CodeDao>()));
  return getIt;
}

class _$RegisterModule extends _i913.RegisterModule {}
