import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/product.dart';



class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product}); 

  final Product product; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         title: Center(child: Text(product.name, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
          backgroundColor: Colors.blue,
      ),
body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: SingleChildScrollView( 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Image.network(
                product.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover, 
              ),
              const SizedBox(height: 20), 
              Text(
                product.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10), 
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20, color: Colors.blueGrey),
              ),
              const SizedBox(height: 20), 
              Text(
                product.description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
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
                                   Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                            },
                          );
                            
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white, 
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
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

