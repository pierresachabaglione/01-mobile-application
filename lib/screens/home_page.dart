import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0341), // Couleur de fond de la page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            // Logo
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Image.asset(
                'assets/logo_app.PNG',
                width: 494, // Largeur du logo en pixels
                height: 324, // Hauteur du logo en pixels
              ),
            ),

            // Bouton Identifiant
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF1A0341), // Couleur du texte
                fixedSize: Size(346, 65), // Largeur et hauteur fixes
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Coins arrondis
                ),
              ),
              onPressed: () {
                // Action pour Identifiant
              },
              child: Text('Identifiant'),
            ),
            SizedBox(height: 20),

            // Bouton Mot de passe
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF1A0341), // Couleur du texte
                fixedSize: Size(346, 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Coins arrondis
                ),
              ),
              onPressed: () {
                // Action pour Mot de passe
              },
              child: Text('Mot de passe'),
            ),
            SizedBox(height: 20),

            // Ligne avec les deux nouveaux boutons
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centrer les boutons
              children: [
                // Nouveau bouton Se connecter (Couleur de fond identique à celle de la page)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                      0xFF1A0341,
                    ), // Même couleur que le fond
                    foregroundColor: Colors.white, // Texte en blanc
                    fixedSize: Size(153, 40), // Largeur et hauteur fixes
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Coins arrondis
                    ),
                  ),
                  onPressed: () {
                    // Action pour Se connecter
                  },
                  child: Text('Se connecter'),
                ),
                SizedBox(width: 20), // Espacement entre les deux boutons
                // Nouveau bouton Créer un identifiant (Couleur du rouge du logo)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEC221F), // Rouge du logo
                    foregroundColor: Colors.white, // Texte en blanc
                    fixedSize: Size(153, 40), // Largeur et hauteur fixes
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Coins arrondis
                    ),
                  ),
                  onPressed: () {
                    // Action pour Créer un identifiant
                  },
                  child: Text('Créer un identifiant'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
