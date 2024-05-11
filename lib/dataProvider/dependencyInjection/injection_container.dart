import 'package:get_it/get_it.dart';

import '../network/api_service.dart';

final locator = GetIt.instance;

void diSetup() {
  locator.registerLazySingleton<ApiService>(() => ApiService());
}
