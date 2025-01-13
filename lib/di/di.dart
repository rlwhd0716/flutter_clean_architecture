import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit()
void injectDependencies({required GetIt getIt}) => getIt.init();

// @InjectableInit(
//   initializerName: r'$initGetIt',
//   preferRelativeImports: true,
//   asExtension: false,
// )
// Future<void> injectDependencies() => $initGetIt(getIt);
//
// Future<void> $initGetIt(
//   GetIt getIt, {
//   String? environment,
//   EnvironmentFilter? environmentFilter,
// }) async {
// final gh = GetItHelper(getIt, environment.toString());
//
// // 실제 RestFul API 처리 서비스 등록
// gh.factory<PostListUseCase>(() => PostListUseCase());
//
//  // RestFul API 서비스를 사용하는 원격 데이터 소스
// gh.factory<RemoteDataSource>(() => RemoteDataSourceImpl(getIt<ApiService>()));
//
// config.$initGetIt(getIt);
// }
