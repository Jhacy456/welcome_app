import 'package:flutter/material.dart';
import 'email_verification_success_screen.dart'; 

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Email Verification')),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              Icon(Icons.email, size: 80, color: Colors.blue),
              SizedBox(height: 20),
              Text(
                'Verification Email Sent!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Please check your inbox and follow the instructions.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "Enter your email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Enter verification code",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),

              Text(
                "Create Password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "New Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),

              // Submit Button - Navigates to Success Screen
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EmailVerificationSuccessScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  textStyle: TextStyle(fontSize: 18),
                ),
                child: Text('Submit'),
              ),
              SizedBox(height: 15),

             
            ],
          ),
        ),
      ),
    );
  }
}
