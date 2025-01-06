import 'package:chopper/chopper.dart';
import 'package:data/data.dart';
import 'package:data/inject/configurations.config.dart' as data_config;
import 'package:domain/inject/configurations.config.dart' as domain_config;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'configurations.config.dart' as config;

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $initGetIt(getIt);

Future<void> $initGetIt(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  final gh = GetItHelper(getIt, environment.toString());
  final sharedPreferences = await SharedPreferences.getInstance();

  // IoC 등록
  // gh.lazySingleton<AppPreferences>(() => AppPreferences(sharedPreferences));

  // Http 요청 처리 등록
  var baseApiClient = ApiClient(ApiType.base);

  // Dio 등록 [ApiClient에서 생성한 apiProvider가 가지고 있는 Dio]
  gh.factory<ChopperClient>(() => baseApiClient.apiProvider.getChopper);

  // 실제 RestFul API 처리 서비스 등록
  gh.factory<ApiService>(() => ApiService.create(getIt<ChopperClient>()));

  //  RestFul API 서비스를 사용하는 원격 데이터 소스
  gh.factory<RemoteDataSource>(() => RemoteDataSourceImpl(getIt<ApiService>()));

  data_config.$initGetIt(getIt);
  domain_config.$initGetIt(getIt);
  config.$initGetIt(getIt);
}
