import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/product.dart';



class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product}); // Constructeur

  final Product product; // Produit pour lequel afficher les détails


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        // Titre de la barre d'application avec le nom du produit
         title: Center(child: Text(product.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
          backgroundColor: Colors.blue,
      ),
body: Padding(
        padding: const EdgeInsets.all(16.0), // Rembourrage autour du contenu
        child: SingleChildScrollView( // Permet de faire défiler le contenu
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alignement à gauche
            children: [
              Image.network(
                product.imageUrl, // Affiche l'image du produit
                height: 200, // Hauteur de l'image
                width: double.infinity, // Largeur de l'image
                fit: BoxFit.cover, // Ajuste l'image
              ),
              const SizedBox(height: 20), // Espace entre l'image et le texte
              Text(
                product.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10), // Espace entre le nom et le prix
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20, color: Colors.blueGrey),
              ),
              const SizedBox(height: 20), // Espace avant la description
              Text(
                product.description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify, // Justifie le texte
              ),
              Center(
                  child: Container(
                        child: Padding(
                            padding: const EdgeInsets.only(top: 60),
                        child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                return AlertDialog(
                                    title: const Text('Commande Confirmée'),
                                    content: Text('Vous avez commandé ${product.name}.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                   Navigator.of(context).pop(); // Fermer le dialogue
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                            },
                          );
                              //   // Affiche un SnackBar comme message de confirmation
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(
                              //   content: Text('Commande passée pour ${product.name}!'),
                              //   duration: const Duration(seconds: 2),
                              // ),
                            // );
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent, // Couleur de fond du bouton
                          foregroundColor: Colors.white, // Couleur du texte lorsque le bouton est actif
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // Arrondit les coins du bouton
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Espacement interne du bouton
                        ),
                        child: Text('Commander', style: TextStyle( fontWeight: FontWeight.bold)),
                        ),
                      ),
                  ),
                ),
              ],
          ),
        ),
      ),

       
    );
  }
}

