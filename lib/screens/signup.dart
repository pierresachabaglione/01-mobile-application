import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
  
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  // Controller for email input
  final TextEditingController _passwordController = TextEditingController();
  // Controller for password input
  final TextEditingController _confirmPasswordController = TextEditingController();
  // Controller for confirm password input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0341), // Light gray background color
      appBar: AppBar(title: Text("subscription")),
      // AppBar with title "subscription" 

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
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,

              decoration: InputDecoration(
                labelText: "Mot de passe",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: "Confirmer le mot de passe",
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action d'inscription 
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xFF1A0341),
              ),
              child: Text("S'inscrire"),
            ),
          ],
        ),
      ),
    );
  }
}
