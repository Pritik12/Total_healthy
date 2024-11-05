import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup_controller.dart';
import 'package:totalhealthy/app/modules/Registration_Screen/Registration_view.dart';

class SignupView extends StatelessWidget {
  final SignupController signupController = Get.put(SignupController());

  SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevents the page from moving up
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF272e23),
              Color.fromARGB(255, 12, 12, 12),
              Color.fromARGB(255, 12, 12, 12),
              Color(0xFF272e23),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50, left: 85),
                  child: const Row(
                    children: [
                      Text(
                        "Please Provide",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.amberAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Kindly Share The Required Information To",
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Proceed Further.",
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 50),
                // Gender Selection Boxes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        signupController.selectMale();
                      },
                      child: Obx(() => Container(
                            margin: const EdgeInsets.only(left: 0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 36, 36, 36),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: signupController.isMaleSelected.value
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
                                SizedBox(height: 70),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.white30,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        signupController.selectFemale();
                      },
                      child: Obx(() => Container(
                            margin: const EdgeInsets.only(right: 0),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 36, 36, 36),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: signupController.isFemaleSelected.value
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
                                SizedBox(height: 70),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Colors.white30,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.only(right: 320),
                  child: const Text(
                    "Full Name",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 390,
                  child: TextField(
                    onChanged: (value) {
                      signupController.fullName.value = value;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_2_outlined,
                          color: Colors.white54),
                      hintText: "enter your full name",
                      hintStyle: const TextStyle(color: Colors.white30),
                      fillColor: const Color.fromARGB(255, 36, 36, 36),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.only(right: 294),
                  child: const Text(
                    "Email Address",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 390,
                  child: TextField(
                    onChanged: (value) {
                      signupController.email.value = value;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.mail_outline_rounded,
                          color: Colors.white54),
                      hintText: "enter your email address",
                      hintStyle: const TextStyle(color: Colors.white30),
                      fillColor: const Color.fromARGB(255, 36, 36, 36),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.only(right: 320),
                  child: const Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 390,
                  child: TextField(
                    onChanged: (value) {
                      signupController.password.value = value;
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline_rounded,
                          color: Colors.white54),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.white54,
                      ),
                      hintText: "enter your password",
                      hintStyle: const TextStyle(color: Colors.white30),
                      fillColor: const Color.fromARGB(255, 36, 36, 36),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: signupController.submitSignupForm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 205, 226, 109),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Get.to(() => RegistrationView());
                  },
                  child: const Text(
                    "Already have an account? Sign In",
                    style: TextStyle(color: Colors.white54),
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
