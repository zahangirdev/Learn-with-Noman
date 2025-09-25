import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "Welcome. Please enter your details",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    // Name
                    Text(
                      "Name*",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your name"),
                    ),
                    SizedBox(height: 10),
                    // Email
                    Text(
                      "Email*",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your email"),
                    ),
                    SizedBox(height: 10),
                    // Phone Number
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your email"),
                    ),
                    SizedBox(height: 15),
                    // Password
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Password"),
                      obscureText: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Remember for 30 days"),
                    TextButton(
                        onPressed: () {}, child: const Text("Forget password")),
                  ],
                ),
                const SizedBox(height: 20),
                // Get started button
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get started",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.person_3_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // Google Auth
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          "assets/images/icons/svg/google-icon.svg",
                          height: 20,
                          width: 20),
                      const SizedBox(width: 10),
                      const Text(
                        "Sign up with Google",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
