import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterui/app/core/app.dart';
import 'package:flutterui/app/core/config.dart';
import 'package:flutterui/app/shared/presentation/helpers/observers/bloc_observer.dart';
import 'package:flutterui/app/core/service_locators.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  await ServiceLocators.register();
  AppConfig.instance.init(env: AppEnv.PROD);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}
