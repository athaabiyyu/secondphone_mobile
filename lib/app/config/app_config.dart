import 'package:secondphone_mobile/app/config//environment/environment.dart';

class AppConfig {
  AppConfig._();
  
  static const appName = 'Second Phone Mobile';
  static const apiBaseUrl = 'http://localhost:8000/api';
  static const connectTimeout = Duration(seconds: 10);
  static const receiveTimeout = Duration(seconds: 10);
  static const currentEnvironment = Environment.development;
}