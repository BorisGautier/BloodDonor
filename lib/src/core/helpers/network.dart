import 'dart:async';
import 'dart:io';

class NetworkInfoHelper {
  // Méthode pour vérifier si l'appareil est connecté à Internet
  Future<bool> isConnected() async {
    bool connected = false; // variable pour stocker la valeur de connexion
    try {
      final result = await InternetAddress.lookup('google.com').timeout(
          const Duration(
              seconds:
                  5)); // recherche de l'adresse IP de google.com avec une durée limite de 5 secondes
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        // si la recherche est réussie et que le résultat n'est pas vide
        connected = true; // l'appareil est considéré comme connecté
      }
    } on SocketException catch (_) {
      // si la recherche échoue en raison d'une SocketException
      connected = false; // l'appareil est considéré comme déconnecté
    } on TimeoutException catch (_) {
      // si la recherche prend trop de temps
      connected = false; // l'appareil est considéré comme déconnecté
    }
    return connected; // renvoie la valeur de connexion
  }
}
