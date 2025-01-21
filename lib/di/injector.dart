import 'package:data/di/di.dart' as data;
import 'package:domain/di/di.dart' as domain;
import 'package:get_it/get_it.dart';

import 'di.dart' as presentation;

var getIt = GetIt.instance;

void injectAllDependencies() {
  data.injectDependencies(getIt: getIt).then((getIt) => {
        domain.injectDependencies(getIt: getIt),
        presentation.injectDependencies(getIt: getIt)
      });
}
