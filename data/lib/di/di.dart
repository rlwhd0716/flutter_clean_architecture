import 'package:chopper/chopper.dart';
import 'package:data/data.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@InjectableInit()
void injectDependencies({required GetIt getIt}) => getIt.init();

@module
abstract class RegisterModule {
  Future<ChopperClient> get chopper async {
    return ApiClient(ApiType.base).apiProvider.getChopper;
  }
}
