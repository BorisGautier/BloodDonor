import 'package:blood_donor/src/core/app/bloc/app_bloc.dart';
import 'package:blood_donor/src/core/helpers/network.dart';
import 'package:blood_donor/src/core/helpers/sharedpreferences.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  //Utils
  // Enregistrement des instances des différents helpers
  getIt.registerLazySingleton<NetworkInfoHelper>(() => NetworkInfoHelper());
  getIt.registerLazySingleton<SharedPreferencesHelper>(
      () => SharedPreferencesHelper());

  //Repository

  //Bloc
  // Enregistrement des instances des différents blocs
  getIt.registerFactory<AppBloc>(() => AppBloc());
}
