import 'package:get_it/get_it.dart';
import 'package:img_to_ASCII/util/image_picker_options.dart';
import 'package:img_to_ASCII/util/navigation.dart';

GetIt locator = GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ImageOptions());
}