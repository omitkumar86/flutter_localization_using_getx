import 'package:flutter/material.dart';
import 'package:flutter_localization_using_getx/controller/locale_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LanguageMenuButton extends GetView<LocaleController> {
  LanguageMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Icon(
                Icons.language_outlined,
                size: 25.sp,
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                size: 26.sp,
              ),
            ],
          ),
          Text(
            "lan_name".tr,
          ),
        ],
      ),
      offset: Offset(0, 30),
      itemBuilder: (context) => controller.optionsLocales.entries.map((e) {
        return PopupMenuItem(
            value: e.key, child: Text("${e.value['description']}"));
      }).toList(),
      onSelected: (newValue) {
        controller.updateLocale(newValue);
      },
    );
  }
}
