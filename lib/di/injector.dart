import 'package:data/di/di.dart' as data;
import 'package:domain/di/di.dart' as domain;
import 'package:get_it/get_it.dart';

import 'di.dart' as presentation;

final getIt = GetIt.instance;

// @InjectableInit(
//   initializerName: r'$initGetIt',
//   preferRelativeImports: true,
//   asExtension: false,
//   includeMicroPackages: true,
//   externalPackageModulesBefore: [
//     ExternalModule(DataPackageModule),
//   ],
// )
// Future<void> injectDependencies() => $initGetIt(getIt);

// Future<void> $initGetIt(
//   GetIt getIt, {
//   String? environment,
//   EnvironmentFilter? environmentFilter,
// }) async {
// final gh = GetItHelper(getIt, environment.toString());
// final sharedPreferences = await SharedPreferences.getInstance();

// IoC 등록
// gh.lazySingleton<AppPreferences>(() => AppPreferences(sharedPreferences));

// Http 요청 처리 등록
// var baseApiClient = ApiClient(ApiType.base);

// Dio 등록 [ApiClient에서 생성한 apiProvider가 가지고 있는 Dio]
// gh.factory<ChopperClient>(() => baseApiClient.apiProvider.getChopper);

// 실제 RestFul API 처리 서비스 등록
// gh.factory<ApiService>(() => ApiService.create(getIt<ChopperClient>()));

//  RestFul API 서비스를 사용하는 원격 데이터 소스
// gh.factory<RemoteDataSource>(() => RemoteDataSourceImpl(getIt<ApiService>()));

// config.$initGetIt(getIt);
// }

void injectAllDependencies() {
  data.injectDependencies(getIt: getIt);
  domain.injectDependencies(getIt: getIt);
  presentation.injectDependencies(getIt: getIt);
}
