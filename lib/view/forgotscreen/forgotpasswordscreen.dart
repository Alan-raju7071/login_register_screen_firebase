import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/view/login_screen/login_screen.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  String? feedbackMessage;

  Future<void> resetPassword() async {
    setState(() {
      isLoading = true;
      feedbackMessage = null;
    });

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());

      setState(() {
        feedbackMessage = "Password reset email sent!";
      });
    } on FirebaseAuthException catch (e) {
      setState(() {
        feedbackMessage = e.message;
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Text(
                "Enter your email to receive a password reset link.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          resetPassword();
                        }
                      },
                      child: const Text("Reset Password"),
                    ),
              if (feedbackMessage != null) ...[
                const SizedBox(height: 20),
                Text(
                  feedbackMessage!,
                  style: TextStyle(
                      color: feedbackMessage == "Password reset email sent!"
                          ? Colors.green
                          : Colors.red),
                ),
                  SizedBox(height: 30,),
          TextButton(onPressed: () {
          Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
          
            
          }, child: Text("Back to login"))
              ]
            ],
          ),
        ),
      ),
    );
  }
}
