import 'package:flutter/material.dart';
import 'package:flutter_projet/pages/home_page.dart';

final formKey = GlobalKey<FormState>();
final email_controller = TextEditingController();
final password_controller = TextEditingController(); 

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  
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
                 
                        ),
                        obscureText: false, 
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
                          labelText: 'Mot de passe', 
                          hintText: "Saisi votre mot de passe",
                          prefixIcon: Icon(Icons.password),
                         
                          ),
                        obscureText: true,
                        keyboardType: TextInputType.text, 
                        controller: password_controller,  
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
                            if (formKey.currentState!.validate()) { 
                              if(email_controller.text == "arbi@gmail.com" && password_controller.text == "123"){
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                  ),
                                );
                                email_controller.text == "";
                                password_controller.text == ""; 
                              }
                            
                           }
                           
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white, 
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), 
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