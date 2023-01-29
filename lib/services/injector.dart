import 'package:faker/faker.dart';
import 'package:get_it/get_it.dart';

GetIt injector = GetIt.instance;

Future setupInjector() async {
  injector.registerLazySingleton<Faker>(() => Faker());
}
