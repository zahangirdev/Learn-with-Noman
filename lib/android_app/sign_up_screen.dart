import 'package:flutter/material.dart';
import 'package:learn_with_noman/widgets/custom_button.dart';
import 'package:learn_with_noman/widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/onboarding/pixelcut-export2.png",
                  height: 70,
                ),
                SizedBox(
                  height: 25,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "Welcome. Please enter your details",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    // TextFor
                    // Name
                    CustomTextField(
                        FieldText1: "Name*", FieldText2: "Enter your name"),
                    CustomTextField(
                        FieldText1: "Email*", FieldText2: "Enter your email"),
                    CustomTextField(
                        FieldText1: "Password",
                        FieldText2: "Enter your Ppassword"),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Remember for 30 days",
                      style: TextStyle(),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget password",
                          style: TextStyle(),
                        )),
                  ],
                ),
                const SizedBox(height: 20),
                // Get started button
                Custombuttom(btmText: "Get started", onTab: () {}),

                const SizedBox(height: 15),
                // Google Auth

                const GoogleAuthButtom(
                    btmText: "Sign up with Google",
                    imagePath: "assets/images/icons/svg/google-icon.svg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
