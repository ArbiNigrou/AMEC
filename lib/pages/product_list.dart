import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/product_detail.dart';
import 'package:flutter_projet/pages/product.dart';


class ProductList extends StatelessWidget {
   ProductList({super.key});

    final List<Product> products = [
    Product(name: 'Ecouteurs Bleutout', price: 29.99, imageUrl: '/images/P1.jpg', description: 'Des écouteurs sans fil avec une excellente qualité sonore.',),
    Product(name: 'Disque Dur', price: 190.00, imageUrl: '/images/P2.jpg', description: 'Un disque dur externe de 1 To pour sauvegarder vos données.',),
    Product(name: 'Casque', price: 9.99, imageUrl: '/images/P3.jpg', description: 'Un casque léger pour une utilisation quotidienne.',),
    Product(name: 'Clavier', price: 20.50, imageUrl: '/images/P4.jpg', description: 'Un clavier mécanique avec rétroéclairage.',),
    Product(name: 'PC Portable', price: 200.00, imageUrl: '/images/P5.jpg', description: 'Un ordinateur portable fiable pour le travail et le divertissement.',),
    Product(name: 'Disque dur SSD', price: 40.00, imageUrl: '/images/P6.jpg', description: 'Disque SSD rapide et léger pour des performances accrues.',),
    Product(name: 'Ecouteurs cable', price: 30.50, imageUrl: '/images/P7.jpg', description: 'Des écouteurs avec fil, parfaits pour les audiophiles.',),
    Product(name: 'Tablette', price: 70.00, imageUrl: '/images/P8.jpg', description: 'Une tablette parfaite pour la lecture et le divertissement.',),
    Product(name: 'Smartphone', price: 350.00, imageUrl: '/images/P9.jpg', description: 'Un smartphone avec toutes les fonctionnalités modernes.',),
    Product(name: 'Adaptateur', price: 10.00, imageUrl: '/images/P10.jpg', description: 'Un adaptateur universel pour différents périphériques.',),
    Product(name: 'Souris', price: 5.50, imageUrl: '/images/P11.jpg', description: 'Une souris ergonomique pour un confort optimal.',),
    Product(name: 'USB 32Go', price: 20.00, imageUrl: '/images/P12.jpg', description: 'Une clé USB de 32 Go pour le stockage portable.',),
    Product(name: 'USB 64Go', price: 30.00, imageUrl: '/images/P13.jpg', description: 'Une clé USB de 64 Go pour davantage d’espace.',),
    Product(name: 'RAM', price: 90.00, imageUrl: '/images/P14.jpg', description: 'Un module de RAM rapide pour améliorer les performances de votre PC.',),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Center(child: Text("Liste de Produits", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
          backgroundColor: Colors.blue,
      ),
body: ListView.builder(
        itemCount: products.length, 
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.all(8.0), 
            child: ListTile(
              leading: Image.network(
                product.imageUrl,
                width: 50, 
                fit: BoxFit.cover, 
              ),
              title: Text(product.name), 
              subtitle: Text('\$${product.price.toStringAsFixed(2)}'), 
              trailing: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(product: product), 
                  ),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent, 
                  foregroundColor: Colors.white, 
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0), 
                ),
                 child: const Text('Détails', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          );
        }
      )
    );
  }
}


