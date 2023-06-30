// ignore_for_file: avoid_print

import 'dart:async';

import 'package:blood_donor/blocobserver.dart';
import 'package:blood_donor/src/app.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_performance/firebase_performance.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'firebase_options.dart';
import 'src/core/di/di.dart' as di;

void main() async {
  runZonedGuarded(() async {
    // Initialisation de tous les widgets
    WidgetsFlutterBinding.ensureInitialized();
    // Initialisation des variables d'environement
    await dotenv.load(fileName: ".env");
    // Initialisation des dependences via getIt
    await di.init();
    // Initialisation de Firebase
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebasePerformance.instance;

    // Configuration de HydratedBloc pour la persistance de l'état
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory(),
    );
    // Configuration de l'observateur de BLoC
    Bloc.observer = SimpleBlocObserver();

    // Lancement de l'application
    runApp(const MyApp());
  }, (error, stackTrace) {
    // Gestion des erreurs avec Firebase Crashlytics
    print('runZonedGuarded: Caught error in my root zone.');
    print(stackTrace);
    print(error);
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}
