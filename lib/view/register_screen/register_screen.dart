
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/controller/registration_controller.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
   //final confirmPasswordController = TextEditingController();

    return Scaffold(
     
      body: Form(
        key: _formKey,
        child: Stack(
          children: [ Container(
            child: Column(
              children: [
                const SizedBox(height: 150),
                const Text(
                  "Ziya Attend",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Text("Create an account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colorconstant.green),),
                const SizedBox(height: 30),
            
                    
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
            
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your phone number';
                      }
                      if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                        return 'Enter a valid 10-digit phone number';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
            
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
            
            
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 20),
            
                
                // TextFormField(
                //   controller: confirmPasswordController,
                //   obscureText: true,
                //   decoration: const InputDecoration(
                //     labelText: "Confirm Password",
                //     border: OutlineInputBorder(),
                //     prefixIcon: Icon(Icons.lock_outline),
                //   ),
                //   validator: (value) {
                //     if (value != passwordController.text) {
                //       return 'Passwords do not match';
                //     }
                //     return null;
                //   },
                // ),
                
            
                
                context.watch<RegistrationController>().isloading
                    ? const CircularProgressIndicator()
                    : 
                        
                         InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<RegistrationController>().onregistration(
                                    email: emailController.text.trim(),
                                    password: passwordController.text,
                                    context: context,
                                     name: nameController.text.trim(),
              phone: phoneController.text.trim(),
                                  );
                            }
                          },
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colorconstant.primaryblue,
                            borderRadius: BorderRadius.circular(5)
                              ),
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Register",
                                 style: TextStyle(fontSize: 18,color: Colorconstant.primarywhite,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      
                const SizedBox(height: 20),
            
              
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Login",
                          
                            style: TextStyle(color: Colorconstant.green,fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
          top: 0,
          child: Container(
            height: 150,
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(200)),
              color: Colorconstant.secondarygreen
            ),
          ),
        ),
        Positioned(
          
          left: 0,
          right: 250,
          bottom: 500,
          
          child: Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(900)),
              
              color: Colorconstant.primaryblue
            ),
          ),
        ),
         Positioned(
          bottom: 0,
          right: 0,
          child: Container(
             height: 40,
            width: 110,
      
            decoration: BoxDecoration(
              color: Colorconstant.secondarygreen,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100))
              
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            height: 80,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(500)),
              color: Colorconstant.green
            ),
          
          ),
        ),
          ]
        ),
      ),
    );
  }
}
