import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:totalhealthy/app/modules/Registration_Screen/Registration_controller.dart';
import 'package:totalhealthy/app/modules/Signup_Screen/Signup_view.dart';
//import 'package:totalhealthy/app/modules/Registration_Screen/RegistrationController.dart';

class RegistrationView extends StatelessWidget {
  final RegistrationController _controller = Get.put(RegistrationController());

  RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80, left: 75),
                child: const Row(
                  children: [
                    Text(
                      "Create Your",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Gender Selection Boxes
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Male Box
                  GestureDetector(
                    onTap: _controller.selectMale,
                    child: Obx(() => Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: _controller.isMaleSelected.value
                                  ? const Color.fromARGB(255, 146, 159, 83)
                                  : Colors.transparent,
                              width: 3,
                            ),
                          ),
                          width: 175,
                          height: 195,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 115),
                              Text(
                                "Trainer",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                  // Female Box
                  GestureDetector(
                    onTap: _controller.selectFemale,
                    child: Obx(() => Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 36, 36),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: _controller.isFemaleSelected.value
                                  ? Colors.amberAccent
                                  : Colors.transparent,
                              width: 3,
                            ),
                          ),
                          width: 175,
                          height: 195,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 115),
                              Text(
                                "Trainer",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 300),
              // Continue Button
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 205, 226, 109),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Signup Redirection
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 130, top: 20),
                      child: const Text(
                        "----------",
                        style: TextStyle(
                            color: Colors.white30,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, top: 20),
                      child: const Text(
                        "Or",
                        style: TextStyle(
                            color: Colors.white30,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 5, top: 20),
                        child: const Text(
                          "----------",
                          style: TextStyle(
                              color: Colors.white30,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 90),
                    child: const Text(
                      "Don't have an account yet?",
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(width: 3),
                  Container(
                    margin: const EdgeInsets.only(right: 0),
                    child: GestureDetector(
                      onTap: _controller.goToSignup,
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 205, 226, 109),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
