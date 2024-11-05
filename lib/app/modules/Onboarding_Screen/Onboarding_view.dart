import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:totalhealthy/app/modules/Onboarding_Screen/Onboarding_controller.dart';
import 'package:totalhealthy/app/modules/Registration_Screen/Registration_view.dart';
//import 'package:totalhealthy/app/controllers/onboarding_controller.dart';

class OnboardingView extends StatelessWidget {
  final OnboardingController _controller = Get.put(OnboardingController());

  OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller.pageController,
                onPageChanged: _controller.onPageChanged,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            _buildPageContent(
                              "assets/Group.png",
                              "Welcome to TotalHealthy",
                              "Your all-in-one health and fitness app.",
                            ),
                            const SizedBox(height: 3),
                            Container(
                              child: const Text(
                                "Get personalized plans and track your",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white54,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Container(
                              child: const Text(
                                "progress to achieve your goals.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white54,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        _buildPageContent(
                          "assets/Second.png",
                          "Personalized Diet Plans",
                          "Receive custom diet plans tailored to",
                        ),
                        Container(
                          child: const Text(
                            "your goals. Whether it's weight loss or",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white54,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "fitness, we've got you covered.",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white54,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        _buildPageContent(
                          "assets/Third.png",
                          "Track Your Progress",
                          "Monitor your daily progress and view",
                        ),
                        Container(
                          child: const Text(
                            "detailed results. Stay motivated and",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white54,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "reach your fitness milestones.",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white54,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 0),
            Column(
              children: [
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return GestureDetector(
                          onTap: () => _controller.onDotTapped(index),
                          child: DotIndicator(
                              isActive: _controller.currentPage.value == index),
                        );
                      }),
                    )),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegistrationView(),
                            ),
                          );
                        },
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                            color: Colors.lightGreenAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: _controller.goToNextPage,
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.lightGreenAccent,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  Widget _buildPageContent(String imagePath, String title, String subtitle) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          height: 400,
          width: 450,
          child: Image.asset(imagePath, fit: BoxFit.fitWidth),
        ),
        const SizedBox(height: 20),
        Container(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          child: Text(
            subtitle,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white54,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: isActive ? Colors.lightGreenAccent : Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
