import 'package:flutter/material.dart'; 
import 'package:app/models/search.dart';
import 'package:app/screens/signup.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
  // Create the state for the login page
}


class _LoginPageState extends State<LoginPage> {
  
  final TextEditingController _emailController = TextEditingController();
  // Controller for email input
  final TextEditingController _passwordController = TextEditingController();
  // Controller for password input



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0341),
      appBar: AppBar(title: Text("Connexion")),

      body: Padding(
        padding: EdgeInsets.all(16.0), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Image.asset(
              'assets/logo_app.png', 
                width: 494, 
                height: 324,
                
            ),
            // email
            TextField(
              controller: _emailController, 
              decoration: InputDecoration(
                labelText: "Email", 
                border: OutlineInputBorder(),
                             ),
            ),
            SizedBox(height: 10),

            // password
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Mot de passe",
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hide password input
            ),
            SizedBox(height: 20),

            //login button
            ElevatedButton(
              onPressed: () {
                // Handle login logic here
              },
              child: Text("connexion"), 
            ),
             SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Navigate to the sign-up page
                  // when the user clicks on "Create account"
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                child: Text("Create account", style: TextStyle(fontSize: 16)),
              ),
          ],
        ),
      ),
      
    );
  }
}
