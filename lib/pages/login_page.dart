import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/home_page.dart';
// import 'package:flutter_projet/pages/product_list.dart';

final formKey = GlobalKey<FormState>();
final email_controller = TextEditingController(); // Permet de gérer le champ d'entrer
final password_controller = TextEditingController(); // Permet de gérer le champ d'entrer

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // permet de vider les controleurs après la valdation de formumlaire
  @override
  void dispose(){
    email_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("LOGIN PAGE", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: Form(
                  key: formKey,
                  child: Column(
                           
                    children: <Widget>[
                
                      SizedBox(height: 5),
                
                      Container(
                        width: 300,
                        height: 100,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email', 
                          hintText: 'Saisi votre email',
                          prefixIcon: Icon(Icons.email),
                          // contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0), // Ajuste l'espacement interne
                 
                        ),
                        obscureText: false, 
                        // le controller de champ email
                        controller: email_controller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez entrer votre nom';
                          }
                          return null;
                        },
                      ),),
                
                      SizedBox(height: 10),
                
                      Container(
                        width: 300,
                        height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Mot de passe', // Ajouter le nom de champ de texte
                          hintText: "Saisi votre mot de passe", // Ajouter placeholder au champ de text
                          prefixIcon: Icon(Icons.password), // Ajouter une icon a gauche de textformfield
                          // contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0), // Ajuste l'espacement interne    
                          // border: OutlineInputBorder(), // Ajouter les bordures au champ de text
                          ),
                        obscureText: true,
                        keyboardType: TextInputType.text,  // Changer le type de clavier pour saisir
                        controller: password_controller,  // le controller de champ mot de passe
                          // Vérifier si les champs sont vide ou non
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Veuillez entrer votre mot de passe';
                          }
                          return null;
                        },
                      ),),
                
                
                      Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) { // Si le formulaire est validé
                              // Traitement des données
                              if(email_controller.text == "arbi@gmail.com" && password_controller.text == "123"){
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => HomePage(), // Passe le produit
                                  ),
                                );
                                email_controller.text == "";
                                password_controller.text == ""; 
                              }
                            
                           }
                           
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent, // Couleur de fond du bouton
                            foregroundColor: Colors.white, // Couleur du texte lorsque le bouton est actif
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Espacement interne du bouton
                          ),
                          child: Text('Se Connecter', style: TextStyle( fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),



    );
  }
}