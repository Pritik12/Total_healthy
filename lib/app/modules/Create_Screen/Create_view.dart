import 'package:flutter/material.dart';

class CreateView extends StatefulWidget {
  const CreateView({super.key});

  @override
  State<CreateView> createState() => _CreateViewState();
}

class _CreateViewState extends State<CreateView> {
  bool isBreakfastChecked = false;
  bool isMorningSnackChecked = false;
  bool isBreakChecked = false;
  bool isMorningSnack2Checked = false;
  bool isBreakChecked3 = false;
  bool isMorningSnack3Checked = false;

  bool isBreakfastExpanded = false; // Toggle for Breakfast expansion
  bool isLunchExpanded = false; // Add more toggles for other categories if needed




  // Separate values for each TextField
  int value1 = 500;
  int value2 = 500;
  int value3 = 500;
  int value4 = 500;

  // Separate pressed states for each TextField
  bool isDecrementPressed1 = false;
  bool isIncrementPressed1 = false;
  bool isDecrementPressed2 = false;
  bool isIncrementPressed2 = false;
  bool isDecrementPressed3 = false;
  bool isIncrementPressed3 = false;
  bool isDecrementPressed4 = false;
  bool isIncrementPressed4 = false;

  // Increment and decrement functions for each field
  void increment(int index) {
    setState(() {
      switch (index) {
        case 1:
          value1++;
          isIncrementPressed1 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isIncrementPressed1 = false;
            });
          });
          break;
        case 2:
          value2++;
          isIncrementPressed2 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isIncrementPressed2 = false;
            });
          });
          break;
        case 3:
          value3++;
          isIncrementPressed3 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isIncrementPressed3 = false;
            });
          });
          break;
        case 4:
          value4++;
          isIncrementPressed4 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isIncrementPressed4 = false;
            });
          });
          break;
      }
    });
  }

  void decrement(int index) {
    setState(() {
      switch (index) {
        case 1:
          value1--;
          isDecrementPressed1 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isDecrementPressed1 = false;
            });
          });
          break;
        case 2:
          value2--;
          isDecrementPressed2 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isDecrementPressed2 = false;
            });
          });
          break;
        case 3:
          value3--;
          isDecrementPressed3 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isDecrementPressed3 = false;
            });
          });
          break;
        case 4:
          value4--;
          isDecrementPressed4 = true;
          Future.delayed(const Duration(milliseconds: 200), () {
            setState(() {
              isDecrementPressed4 = false;
            });
          });
          break;
      }
    });
  }
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(height: 140),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 28),
                  ),
                  const SizedBox(width: 85),
                  Container(
                    child: const Text(
                      "Creating A Meal",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
                width: 420,
                child: Image.network(
                  "https://blog.williams-sonoma.com/wp-content/uploads/2013/07/WS_SOD_SaladeNicoise_4616.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(right: 320),
                child: const Text(
                  "Full Name",
                  style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 390,
                child: TextField(
                  style: const TextStyle(color: Colors.white30),
                  decoration: InputDecoration(
                    hintText: "enter your recipe name",
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
              const SizedBox(height: 20),

              // Category Field
              Container(
                margin: const EdgeInsets.only(right: 325),
                  child: const Text("Category", style: TextStyle(color: Colors.white70))),
              const SizedBox(height: 10),
              SizedBox(
                width: 390,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBreakfastExpanded = !isBreakfastExpanded;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 36, 36, 36),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Breakfast",
                              style: TextStyle(color: Colors.lightGreenAccent),
                            ),
                            Icon(
                              isBreakfastExpanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: Colors.lightGreenAccent,
                            )
                          ],
                        ),
                      ),
                    ),
                    // TextFields that will appear when expanded
                    if (isBreakfastExpanded)
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 190,
                                  child: Stack(
                                    children: [
                                      TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          hintText: "Breakfast",
                                          hintStyle: const TextStyle(color: Colors.white30),
                                          fillColor: const Color.fromARGB(255, 36, 36, 36),
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0), // Adjust horizontal padding
                                        ),
                                      ),
                                      Positioned(
                                        left: 10, // Adjust this value to position the checkbox
                                        top: 14,  // Adjust this value to position the checkbox
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isBreakfastChecked = !isBreakfastChecked; // Toggle checkbox state
                                            });
                                          },
                                          child: Container(
                                            width: 20, // Width of the checkbox
                                            height: 20, // Height of the checkbox
                                            decoration: BoxDecoration(
                                              color: isBreakfastChecked ? Colors.lightGreenAccent : Colors.grey, // Change color based on state
                                              borderRadius: BorderRadius.circular(3), // Rounded corners
                                              border: Border.all(
                                                color: Colors.transparent, // Border color
                                                width: 2,
                                              ),
                                            ),
                                            child: isBreakfastChecked
                                                ? const Icon(Icons.check, color: Colors.black, size: 16) // Check icon color when checked
                                                : null, // No icon if not checked
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),const SizedBox(width: 10,),
                                SizedBox(
                                  width: 190,
                                  child: Stack(
                                    children: [
                                      TextField(
                                        readOnly: true,
                                        decoration: InputDecoration(
                                          hintText: "Morning Snacks",
                                          hintStyle: const TextStyle(color: Colors.white30),
                                          fillColor: const Color.fromARGB(255, 36, 36, 36),
                                          filled: true,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: BorderSide.none,
                                          ),
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0), // Adjust horizontal padding
                                        ),
                                      ),
                                      Positioned(
                                        left: 10, // Adjust this value to position the checkbox
                                        top: 14,  // Adjust this value to position the checkbox
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isMorningSnackChecked = !isMorningSnackChecked; // Toggle checkbox state
                                            });
                                          },
                                          child: Container(
                                            width: 20, // Width of the checkbox
                                            height: 20, // Height of the checkbox
                                            decoration: BoxDecoration(
                                              color: isMorningSnackChecked ? Colors.lightGreenAccent : Colors.grey, // Change color based on state
                                              borderRadius: BorderRadius.circular(3), // Rounded corners
                                              border: Border.all(
                                                color: Colors.transparent, // Border color
                                                width: 2,
                                              ),
                                            ),
                                            child:isMorningSnackChecked
                                                ? const Icon(Icons.check, color: Colors.black, size: 16) // Check icon color when checked
                                                : null, // No icon if not checked
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            if (isBreakfastExpanded)
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 190,
                                          child: Stack(
                                            children: [
                                              TextField(
                                                decoration: InputDecoration(
                                                  hintText: "Lunch",
                                                  hintStyle: const TextStyle(color: Colors.white30),
                                                  fillColor: const Color.fromARGB(255, 36, 36, 36),
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  contentPadding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0), // Adjust horizontal padding
                                                ),
                                              ),
                                              Positioned(
                                                left: 10, // Adjust this value to position the checkbox
                                                top: 14,  // Adjust this value to position the checkbox
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isBreakChecked = !isBreakChecked; // Toggle checkbox state
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 20, // Width of the checkbox
                                                    height: 20, // Height of the checkbox
                                                    decoration: BoxDecoration(
                                                      color:isBreakChecked ? Colors.lightGreenAccent : Colors.grey, // Change color based on state
                                                      borderRadius: BorderRadius.circular(3), // Rounded corners
                                                      border: Border.all(
                                                        color: Colors.transparent, // Border color
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: isBreakChecked
                                                        ? const Icon(Icons.check, color: Colors.black, size: 16) // Check icon color when checked
                                                        : null, // No icon if not checked
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),const SizedBox(width: 10,),
                                        SizedBox(
                                          width: 190,
                                          child: Stack(
                                            children: [
                                              TextField(
                                                decoration: InputDecoration(
                                                  hintText: "Pre workout",
                                                  hintStyle: const TextStyle(color: Colors.white30),
                                                  fillColor: const Color.fromARGB(255, 36, 36, 36),
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  contentPadding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0), // Adjust horizontal padding
                                                ),
                                              ),
                                              Positioned(
                                                left: 10, // Adjust this value to position the checkbox
                                                top: 14,  // Adjust this value to position the checkbox
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isMorningSnack2Checked = ! isMorningSnack2Checked; // Toggle checkbox state
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 20, // Width of the checkbox
                                                    height: 20, // Height of the checkbox
                                                    decoration: BoxDecoration(
                                                      color:  isMorningSnack2Checked ? Colors.lightGreenAccent : Colors.grey, // Change color based on state
                                                      borderRadius: BorderRadius.circular(3), // Rounded corners
                                                      border: Border.all(
                                                        color: Colors.transparent, // Border color
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child:  isMorningSnack2Checked
                                                        ? const Icon(Icons.check, color: Colors.black, size: 16) // Check icon color when checked
                                                        : null, // No icon if not checked
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            if (isBreakfastExpanded)
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 190,
                                          child: Stack(
                                            children: [
                                              TextField(
                                                decoration: InputDecoration(
                                                  hintText: "Post Workout",
                                                  hintStyle: const TextStyle(color: Colors.white30),
                                                  fillColor: const Color.fromARGB(255, 36, 36, 36),
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  contentPadding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0), // Adjust horizontal padding
                                                ),
                                              ),
                                              Positioned(
                                                left: 10, // Adjust this value to position the checkbox
                                                top: 14,  // Adjust this value to position the checkbox
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isBreakChecked3 = !isBreakChecked3; // Toggle checkbox state
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 20, // Width of the checkbox
                                                    height: 20, // Height of the checkbox
                                                    decoration: BoxDecoration(
                                                      color: isBreakChecked3 ? Colors.lightGreenAccent : Colors.grey, // Change color based on state
                                                      borderRadius: BorderRadius.circular(3), // Rounded corners
                                                      border: Border.all(
                                                        color: Colors.transparent, // Border color
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child:isBreakChecked3
                                                        ? const Icon(Icons.check, color: Colors.black, size: 16) // Check icon color when checked
                                                        : null, // No icon if not checked
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),const SizedBox(width: 10,),
                                        SizedBox(
                                          width: 190,
                                          child: Stack(
                                            children: [
                                              TextField(
                                                decoration: InputDecoration(
                                                  hintText: "Dinner",
                                                  hintStyle: const TextStyle(color: Colors.white30),
                                                  fillColor: const Color.fromARGB(255, 36, 36, 36),
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                  contentPadding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12.0), // Adjust horizontal padding
                                                ),
                                              ),
                                              Positioned(
                                                left: 10, // Adjust this value to position the checkbox
                                                top: 14,  // Adjust this value to position the checkbox
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      isMorningSnack3Checked = ! isMorningSnack3Checked; // Toggle checkbox state
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 20, // Width of the checkbox
                                                    height: 20, // Height of the checkbox
                                                    decoration: BoxDecoration(
                                                      color: isMorningSnack3Checked ? Colors.lightGreenAccent : Colors.grey, // Change color based on state
                                                      borderRadius: BorderRadius.circular(3), // Rounded corners
                                                      border: Border.all(
                                                        color: Colors.transparent, // Border color
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child:  isMorningSnack3Checked
                                                        ? const Icon(Icons.check, color: Colors.black, size: 16) // Check icon color when checked
                                                        : null, // No icon if not checked
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),


                          ],
                        ),
                      ),



              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(right: 305),
                child: const Text(
                  "Description",
                  style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 390,
                child: SizedBox(
                  height: 130, // Increase this value to change the height
                  child: TextField(
                    style: const TextStyle(color: Colors.white30),
                    maxLines: 5, // Allows for multiple lines of text
                    decoration: InputDecoration(
                    //  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white54),
                      hintText: "Describe the recipe",
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
              ), const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(right: 304),
                child: const Text(
                  "Ingredients",
                  style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
               // width: 100,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 0),
                      height: 55,

                      width: 290,
                      child: TextField(
                        style: const TextStyle(color: Colors.white30),
                        decoration: InputDecoration(
                        //  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white54),
                          hintText: "Describe the recipe",
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
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 55,
                      width: 90,
                      child: TextField(
                        style: const TextStyle(color: Colors.white30),
                        textAlign: TextAlign.center, // Centers the hintText
                        decoration: InputDecoration(
                          hintText: "Q-Ty",
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


                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                // width: 100,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 0),
                      height: 55,
                      width: 290,
                      child: TextField(
                        style: const TextStyle(color: Colors.white30),
                        decoration: InputDecoration(
                          //  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white54),
                          hintText: "Describe the recipe",
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
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 55,

                      width: 90,
                      child: TextField(
                        style: const TextStyle(color: Colors.white30),
                        textAlign: TextAlign.center, // Centers the hintText
                        decoration: InputDecoration(
                          hintText: "Q-Ty",
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


                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                // width: 100,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 0),
                      height: 55,

                      width: 290,
                      child: TextField(
                        style: const TextStyle(color: Colors.white30),
                        decoration: InputDecoration(
                          //  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white54),
                          hintText: "Describe the recipe",
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
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 55,

                      width: 90,
                      child: TextField(
                        style: const TextStyle(color: Colors.white30),
                        textAlign: TextAlign.center, // Centers the hintText
                        decoration: InputDecoration(
                          hintText: "Q-Ty",
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


                  ],
                ),),
                const SizedBox(height: 10),
                SizedBox(
                  // width: 100,
                  child: Row(
                      children: [
                  Container(
                  margin: const EdgeInsets.only(left: 0),
                  height: 55,

                  width: 290,
                  child: TextField(
                    decoration: InputDecoration(
                      //  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white54),
                      hintText: "Describe the recipe",
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
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 55,

                  width: 90,
                  child: TextField(
                    style: const TextStyle(color: Colors.white30),
                    textAlign: TextAlign.center, // Centers the hintText
                    decoration: InputDecoration(
                      hintText: "Q-Ty",
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
                ),]),

              ),const SizedBox(height: 20,),
              SizedBox(
                width: 138,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 205, 226, 109),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Aligns content to the left
                    children: [
                      Container(
                        margin: const EdgeInsets.only(), // Keeps the icon at the left
                        child: const Icon(Icons.add,color: Colors.black,),
                      ),
                      const SizedBox(width: 5), // Adds some spacing between the icon and the text
                      Container(
                        child: const Text("Add Meal",
                        style: TextStyle(color: Colors.black54),),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left:0),
                    child: const Text(
                      "Calculate Automatically",
                      style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
                    ),

                  ),const SizedBox(width: 170,),
                  Container(
                    child: Transform.scale(
                      scale: 0.8, // Keeps the overall size normal
                      child: Transform(
                        transform: Matrix4.identity()..scale(1.0, 0.9), // Scale width to 0.7 and keep height 1.0
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeColor: Colors.white, // The thumb (circle) color when the switch is active
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey[700], // The track color when the switch is inactive
                        ),
                      ),
                    ),
                  ),


                ],
              ),
             // const SizedBox(height: 10),


     Column(
    children: [
    buildIncrementDecrementField(
    "kcal", value1, 1, isDecrementPressed1, isIncrementPressed1),
    const SizedBox(height: 10),
    buildIncrementDecrementField(
    "Carbs (grams)", value2, 2, isDecrementPressed2, isIncrementPressed2),
    const SizedBox(height: 10),
    buildIncrementDecrementField(
    "Protein (grams)", value3, 3, isDecrementPressed3, isIncrementPressed3),
    const SizedBox(height: 10),
    buildIncrementDecrementField(
    "Fats (grams)", value4, 4, isDecrementPressed4, isIncrementPressed4),
    ],
     ), const SizedBox(height: 40,),
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 205, 226, 109),
                  ),
                  child: const Text(
                    "Create Meal",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                ),
              ),
            ]
          ),

        )]
      ),))

    );
    }

        Widget buildIncrementDecrementField(String label, int value, int index,
        bool isDecrementPressed, bool isIncrementPressed) {
      return Container(
        width: 390,
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 36, 36, 36),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(color: Colors.white30),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => decrement(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: isDecrementPressed
                          ? const Color.fromARGB(255, 205, 226, 109)
                          : Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.arrow_downward,
                        color: Colors.black, size: 12),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  '$value',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => increment(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: isIncrementPressed
                          ? const Color.fromARGB(255, 205, 226, 109)
                          : Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.arrow_upward,
                        color: Colors.black, size: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }



