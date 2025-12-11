import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("AMEC", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
      //     backgroundColor: Colors.blue, centerTitle: true,),
          
      body: Column(
        children: [
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Text("AMEC", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),),
              ),

              Padding(
              padding: const EdgeInsets.only(top: 80), 
              child: Image.asset('images/logo.png', width: 500, height: 250,),
            ),
            
            // SizedBox(height: 5), // Ajoute un espace entre les éléments
              Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => ProductList(), // Passe le produit
                        ),
                      );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent, // Couleur de fond du bouton
                          foregroundColor: Colors.white, // Couleur du texte lorsque le bouton est actif
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // Arrondit les coins du bouton
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Espacement interne du bouton
                    ),
                      child: Text('Liste des Produits', style: TextStyle( fontWeight: FontWeight.bold)),
                    ),
                  ),
        ],
      ),
    );
  }
}