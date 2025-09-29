import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_noman/android_app/auth.dart/log_in_screen.dart';
import 'package:learn_with_noman/widgets/custom_onboard_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      "title": "Learn Skills Live",
      "subtitle": "Develop skills live with top industry experts",
    },
    {
      "title": "Module Based Study Plan",
      "subtitle":
          "Career development will be best with structured guidelines and module based study plans",
    },
    {
      "title": "Progress Tracking",
      "subtitle":
          "Keep your progress on track with quizzes, assignments, live tests",
    },
    {
      "title": "Job Placement Support",
      "subtitle": "Exclusive job placement support along with the course",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Top Logo & Skip Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/onboarding/pixelcut-export2.png",
                  fit: BoxFit.contain,
                  width: 130,
                  height: 40,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.to(() => const LogInScreen());
                      },
                      child: const Text(
                        "SKIP",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(() => const LogInScreen());
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // PageView
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final page = _pages[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Indicator Dots
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(_pages.length, (dotIndex) {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: _currentPage == dotIndex ? 16 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: _currentPage == dotIndex
                                  ? Colors.red
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        page["title"]!,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        page["subtitle"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            // Custom Button (using SVG asset path or change widget)
            CustomOnboardButton(
                btmText: "LOG IN/SIGN UP",
                onTab: () {
                  Get.to(() => const LogInScreen());
                }),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
