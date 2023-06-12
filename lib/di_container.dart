import 'package:flutter_localization_using_getx/controller/locale_controller.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Core
//   sl.registerLazySingleton(() => NetworkInfo(sl()));
  //sl.registerLazySingleton(() => DioClient(AppConstants.baseUrl, sl(), loggingInterceptor: sl(), sharedPreferences: sl()));

  /// Repository
  //sl.registerLazySingleton(() => AuthRepo(dioClient: sl(), sharedPreferences: sl()));

  /// Controller
  /// sl.registerFactory(() => LocaleProvider());
  Get.lazyPut(() => LocaleController(), fenix: true);

  /// External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
}
