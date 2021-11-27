import 'package:get_storage/get_storage.dart';

class SharedPreferences {
  String read(String key) {
    final box = GetStorage();
    return box.read(key);
  }

  save(String key, value) {
    final box = GetStorage();
    box.write(key, value);
  }

  remove(String key) {
    final box = GetStorage();
    box.remove(key);
  }

  clearCache() {
    final box = GetStorage();
    box.erase();
  }
}
