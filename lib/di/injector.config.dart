// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/di/micro_package.module.dart' as _i818;
import 'package:domain/di/micro_package.module.dart' as _i186;
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../posts/bloc/posts_bloc.dart' as _i530;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  await _i818.DataPackageModule().init(gh);
  await _i186.DomainPackageModule().init(gh);
  gh.factory<_i530.PostsBloc>(
      () => _i530.PostsBloc(gh<_i494.PostListUseCase>()));
  return getIt;
}
