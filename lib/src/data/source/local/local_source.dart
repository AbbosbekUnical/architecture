import 'package:architecture/src/core/constants/app_keys.dart';
import 'package:hive/hive.dart';

class LocalSource {
  final Box<dynamic> box;

  LocalSource(this.box);

  void setToken(String value) async {
    await box.put(AppKeys.token, value);
  }

  String get token => box.get(AppKeys.token, defaultValue: '') as String;

  void setPhoneNumber(String value) async {
    await box.put(AppKeys.phoneNumber, value);
  }

  String? get phoneNumber =>
      box.get(AppKeys.phoneNumber, defaultValue: null) as String?;

  Map<String, dynamic> header() => {'': ''};

  Future<void> clear() async {
    await box.clear();
  }
}
