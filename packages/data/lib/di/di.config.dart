// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chopper/chopper.dart' as _i31;
import 'package:data/data.dart' as _i437;
import 'package:data/data_source/remote_data_source_impl.dart' as _i332;
import 'package:data/di/di.dart' as _i575;
import 'package:data/network/api_service.dart' as _i1038;
import 'package:data/repository_impl/posts_repository_impl.dart' as _i384;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factoryAsync<_i31.ChopperClient>(() => registerModule.chopper);
    gh.singletonAsync<_i1038.ApiService>(() async =>
        _i1038.ApiService.create(await getAsync<_i31.ChopperClient>()));
    gh.factoryAsync<_i332.RemoteDataSourceImpl>(() async =>
        _i332.RemoteDataSourceImpl(await getAsync<_i437.ApiService>()));
    gh.factory<_i384.PostsRepositoryImpl>(
        () => _i384.PostsRepositoryImpl(gh<_i437.RemoteDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i575.RegisterModule {}
