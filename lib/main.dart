import 'package:flutter/material.dart';
import 'package:flutter_localization_using_getx/home_page.dart';
import 'package:flutter_localization_using_getx/localization/storage_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'di_container.dart' as di;
import 'localization/app_translations.dart';

var storage;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  //init
  await initialConfig();
  //initalize
  storage = Get.find<StorageService>();
  runApp(const MyApp());
}

initialConfig() async {
  await Get.putAsync(() => StorageService().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            translations: AppTranslations(),
            locale: storage.languageCode != null
                ? Locale(storage.languageCode!, storage.countryCode)
                : Locale("en", "US"),
            fallbackLocale: Locale('en', 'US'),
            initialRoute: HomePage.routeName,
            getPages: [
              GetPage(name: HomePage.routeName, page: () => HomePage()),
            ],
          );
        });
  }
}
