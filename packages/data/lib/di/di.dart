// @InjectableInit()
// GetIt injectDependencies({required GetIt getIt}) => getIt.init();
//
// @module
// abstract class RegisterModule {
//   Future<ChopperClient> get chopper async {
//     return ApiClient(ApiType.base).apiProvider.getChopper;
//   }
// }

import 'package:chopper/chopper.dart';
import 'package:data/data.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart' as config;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<GetIt> injectDependencies({required GetIt getIt}) => $initGetIt(getIt);

Future<GetIt> $initGetIt(
  GetIt getIt, {
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
  final gh = GetItHelper(getIt, environment.toString());

  var baseApiClient = ApiClient(ApiType.base);

  gh.factory<ChopperClient>(() => baseApiClient.apiProvider.getChopper);

  gh.factory<ApiService>(() => ApiService.create(getIt<ChopperClient>()));

  // gh.factory<RemoteDataSource>(() => RemoteDataSourceImpl(getIt<ApiService>()));

  return config.$initGetIt(getIt);
}
