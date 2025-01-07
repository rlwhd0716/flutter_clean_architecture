//@GeneratedMicroModule;DataPackageModule;package:data/di/micro_package.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:data/data.dart' as _i437;
import 'package:data/repository_impl/posts_repository_impl.dart' as _i384;
import 'package:domain/domain.dart' as _i494;
import 'package:injectable/injectable.dart' as _i526;

class DataPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i494.PostsRepository>(
        () => _i384.PostsRepositoryImpl(gh<_i437.RemoteDataSource>()));
  }
}
