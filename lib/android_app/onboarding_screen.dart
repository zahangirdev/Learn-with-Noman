import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn_with_noman/android_app/log_in_screen.dart';

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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/onboarding/pixelcut-export2.png",
              fit: BoxFit.contain,
              width: 100,
              height: 50,
            ),
            const SizedBox(width: 8),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Get.to(() => const LogInScreen());
                  },
                  child: const Text(
                    "SKIB",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Get.to(() => const LogInScreen());
                    },
                    icon: const Icon(Icons.arrow_forward_ios)),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(_pages.length, (index) {
                          return Container(
                            margin: const EdgeInsets.all(4),
                            width: _currentPage == index ? 16 : 8,
                            height: 8,
                            decoration: BoxDecoration(
                              color: _currentPage == index
                                  ? Colors.red
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          );
                        }),
                      ),
                      //  Image.network(page["image"]!, height: 200),
                      const SizedBox(height: 20),
                      Text(
                        page["title"]!,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        page["subtitle"]!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.to(() => const LogInScreen());
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "LOG IN/SIGN UP",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.person_3_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
