import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  PreferencesService._();
  static final instance = PreferencesService._();

  // Devuelve el valor string de la llave string
  Future<String> getString(String key ) async{
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.getString(key) ?? "";
  }

  // adiciona la clave y el valor al conjunto de preferencias de la aplicacion string
  Future<void> setString(String key, String value ) async{
    SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setString(key, value);
  }

  Future<bool> getBool(String key ) async{
    SharedPreferences instance = await SharedPreferences.getInstance();
    return instance.getBool(key) ?? false;
  }
  Future<void> setBool(String key, bool value ) async{
    SharedPreferences instance = await SharedPreferences.getInstance();
    instance.setBool(key, value);
  }
}