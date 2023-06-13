import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  String? languageCode;
  String? countryCode;

  Future<StorageService> init() async {
    await GetStorage.init();
    languageCode = await GetStorage().read('languageCode');
    countryCode = await GetStorage().read('countryCode');
    return this;
  }

  void write(String key, String value) {
    GetStorage().write(key, value);
  }
}
