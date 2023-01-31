import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  await setup();
}

Future<void> setup() async {
  ///! Features - feature name
  // init states  (eg: cubits, blocs)
  // init use-cases
  // init repositories
  // init datasource's

  ///! Core
  ///! External
  // init other libraries (eg: Http Client, Dio Client)
  final sharedPreferences = await SharedPreferences.getInstance(); // prefs
  const secureStorage = FlutterSecureStorage(); // storage
  serviceLocator.registerLazySingleton(() => sharedPreferences);
  serviceLocator.registerLazySingleton(() => secureStorage);
  serviceLocator.registerLazySingleton(() => InternetConnectionChecker());
}