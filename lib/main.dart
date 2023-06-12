import 'package:flutter/material.dart';
import 'package:flutter_localization_using_getx/controller/locale_controller.dart';
import 'package:flutter_localization_using_getx/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'di_container.dart' as di;
import 'localization/app_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
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
          return FutureBuilder<SharedPreferences>(
              future: SharedPreferences.getInstance(),
              builder: (context, snapshot) {
                return GetBuilder<LocaleController>(
                    init: LocaleController(),
                    builder: (localeController) {
                      return GetMaterialApp(
                        debugShowCheckedModeBanner: false,
                        title: 'Flutter Demo',
                        theme: ThemeData(
                          colorScheme: ColorScheme.fromSeed(
                              seedColor: Colors.deepPurple),
                        ),
                        locale: localeController.locale,
                        supportedLocales: const [
                          Locale('en', 'US'),
                          Locale('bn', 'BD'),
                        ],
                        localizationsDelegates: const [
                          AppLocalizations.delegate,
                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate,
                        ],
                        initialRoute: HomePage.routeName,
                        getPages: [
                          GetPage(
                              name: HomePage.routeName, page: () => HomePage()),
                        ],
                      );
                    });
              });
        });
  }
}
