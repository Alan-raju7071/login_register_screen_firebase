
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/controller/registration_controller.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/widgets/EmailTextfield.dart';
import 'package:login_register_screen_firebase/widgets/nameTextfield.dart';
import 'package:login_register_screen_firebase/widgets/passworTextfield.dart';
import 'package:login_register_screen_firebase/widgets/phonenumberTextfield.dart';
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
                  child: nameTextfield(nameController: nameController),
                ),
                const SizedBox(height: 20),
             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: phonenumberTextfield(phoneController: phoneController),
                ),
                const SizedBox(height: 20),
             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: EmailTextfield(emailController: emailController),
                ),
                const SizedBox(height: 20),
             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: passworTextfield(passwordController: passwordController),
                ),
                const SizedBox(height: 20),
          
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









