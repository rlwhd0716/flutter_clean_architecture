// @InjectableInit.microPackage(
//   ignoreUnregisteredTypesInPackages: ['domain'],
//   externalPackageModulesAfter: [
//     ExternalModule(DomainPackageModule),
//   ],
// )
// initMicroPackage() {
// GetIt getIt = GetIt.instance;
// final gh = getIt<GetItHelper>();

// Http 요청 처리 등록
// var baseApiClient = ApiClient(ApiType.base);

// Dio 등록 [ApiClient에서 생성한 apiProvider가 가지고 있는 Dio]
// gh.factory<ChopperClient>(() => baseApiClient.apiProvider.getChopper);

// 실제 RestFul API 처리 서비스 등록
// gh.factory<ApiService>(() => ApiService.create(getIt<ChopperClient>()));

//  RestFul API 서비스를 사용하는 원격 데이터 소스
// gh.factory<RemoteDataSource>(() => RemoteDataSourceImpl(getIt<ApiService>()));
// }

// @module
// abstract class RegisterModule {
//   Future<ChopperClient> get chopper async {
//     return ApiClient(ApiType.base).apiProvider.getChopper;
//   }
// }
