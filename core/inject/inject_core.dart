import 'package:cleanarch/core/domain/services/http_service.dart';
import 'package:cleanarch/core/infra/services/dio_http_service_impl.dart';
import 'package:get_it/get_it.dart';

class InjectCore {
  static void init() {
    GetIt getIt = GetIt.instance;

    // core
    //getIt.registerLazySingleton<HttpService>(() => DioHttpServiceImpl());
  }
}
