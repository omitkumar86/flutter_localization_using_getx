import 'package:flutter/material.dart';
import 'package:flutter_localization_using_getx/controller/locale_controller.dart';
import 'package:flutter_localization_using_getx/utils/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'localization/language_menu_button.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home_page';
  HomePage({super.key});

  //final localeController = Get.find<LocaleController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocaleController>(
        init: LocaleController(),
        builder: (localeController) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: AppColor.appBarColor,
              title: Text('app_title'.tr),
              actions: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 16.w,
                  ),
                  child: LanguageMenuButton(),
                ),
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'name'.tr,
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.primaryOrange),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'address'.tr,
                    style: TextStyle(fontSize: 23.sp),
                  ),
                  SizedBox(height: 30.h),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Text(
                  //       'switchButton'.tr,
                  //       style: TextStyle(
                  //           fontSize: 22.sp,
                  //           color: AppColor.greenColor,
                  //           fontWeight: FontWeight.w500),
                  //     ),
                  //
                  //     // FlutterSwitch(
                  //     //   activeText: "EN",
                  //     //   inactiveText: "BN",
                  //     //   activeTextColor: AppColor.primaryWhite,
                  //     //   inactiveTextColor: AppColor.primaryWhite,
                  //     //   activeColor: AppColor.primaryOrange,
                  //     //   inactiveColor: AppColor.primaryOrange,
                  //     //   valueFontSize: 14.0.sp,
                  //     //   toggleSize: 25.0.sp,
                  //     //   value: localeController.locale?.languageCode == 'bn',
                  //     //   borderRadius: 40.0.r,
                  //     //   padding: 5,
                  //     //   showOnOff: true,
                  //     //   onToggle: (value) {
                  //     //     final newLocale =
                  //     //         value ? const Locale('bn') : const Locale('en');
                  //     //     localeController.setLanguage(newLocale.toString());
                  //     //   },
                  //     // ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 10.h,
                  // ),
                  // LanguageMenuButton(),
                ],
              ),
            ),
          );
        });
  }
}
