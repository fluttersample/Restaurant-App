import 'package:get_it/get_it.dart';
import 'package:resaurant_ui/Core/Models/DataResource/repository.dart';

final sl = GetIt.instance;

Future<void> init() async {


  // Repository
  sl.registerLazySingleton<Repository>(
    () => Repository(),
  );



}
