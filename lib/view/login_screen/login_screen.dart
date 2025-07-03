
import 'package:flutter/material.dart';
import 'package:login_register_screen_firebase/controller/logincontroller.dart';
import 'package:login_register_screen_firebase/utulits/constant/colorconstant.dart';
import 'package:login_register_screen_firebase/view/forgotscreen/forgotpasswordscreen.dart';

import 'package:login_register_screen_firebase/view/register_screen/register_screen.dart';
import 'package:login_register_screen_firebase/widgets/Login_email_Textfield.dart';
import 'package:login_register_screen_firebase/widgets/Login_passTextfield.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Form(
        key: _formKey,
        child: Stack(
          children: [ Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100,),
                const Text(
                  "ziya Attend",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("Smart Attendence Maintainer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colorconstant.green),),
                const SizedBox(height: 30),
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Login_email_Textfield(emailController: emailController),
                ),
                const SizedBox(height: 20),
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Login_passTextfield(passwordController: passwordController),
                ),
                const SizedBox(height: 10),
             Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<Logincontroller>().onlogin(
                                email: emailController.text,
                                password: passwordController.text,
                                context: context,
                              );
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                           color: Colorconstant.primaryblue,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        child:  Center(
                          child: Text(
                            "Login",
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
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(color: Colors.blueAccent,),
                        ),
                      ),
                      const Spacer(),
                     TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colorconstant.green,fontWeight: FontWeight.bold),
                      ),
                    ),
                    ],
                  ),
                ),
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



