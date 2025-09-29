import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_noman/android_app/auth.dart/sign_up_screen.dart';
import 'package:learn_with_noman/android_app/const/all_colors.dart';
import 'package:learn_with_noman/widgets/custom_button.dart';
import 'package:learn_with_noman/widgets/custom_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isChecked = false; // ✅ State variable goes here

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

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextField(
                        FieldText1: "Email", FieldText2: "Enter your email"),
                    const CustomTextField(
                      FieldText1: "Password",
                      FieldText2: "Enter your Password",
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (newValue) {
                            setState(() {
                              _isChecked = newValue!;
                            });
                          },
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                        ),
                        const Text("Remember for 30 days"),
                        const Spacer(),
                        const Text("Forgot password"),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Custombuttom(btmText: "Sign in", onTab: () {}),

                const SizedBox(height: 15),

                // Google Auth
                const GoogleAuthButtom(
                  btmText: "Sign in with Google",
                  imagePath: "assets/images/icons/svg/google-icon.svg",
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account? ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 143, 117, 117)),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const SignUpScreen());
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(color: AppColors.buttomBG),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
