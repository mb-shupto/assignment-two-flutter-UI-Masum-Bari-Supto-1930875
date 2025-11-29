import 'package:assignment_two_flutter/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:assignment_two_flutter/widgets/info_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 3;
  static const Color primaryPurple = Color(0xFF5B46EB);

  static const String name = "STUDENT NAME (YOUR NAME HERE)";
  static const String studentID = "S12345 (YOUR ID HERE)";
  static const String email = "student.name@iub.edu (YOUR IUB EMAIL HERE)";
  static const String mainBio =
      "I'm currently focusing on my final year, balancing studies "
      "with building side projects. I believe financial health is key to academic success. "
      "I love hiking on weekends and planning my next big travel adventure!";
  static const String note =
      "(Note: Students should replace the text above with their own description here!)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile"),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 30),

              const Text(
                "User Profile",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              CircleAvatar(
                radius: 60,
                backgroundColor: const Color(0xFF5B46EB),
                child: const Text(
                  "SN",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 40),
              InfoCard(title: 'Name', value: name),

              const SizedBox(height: 15),
              InfoCard(title: 'Student ID', value: studentID),

              const SizedBox(height: 15),
              InfoCard(title: "Email", value: email),

              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title INSIDE the card
                    const Text(
                      "Bio / Story",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // RichText with mixed styles
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 15,
                          height: 1.7,
                          color: Colors.black87,
                        ),
                        children: [
                          TextSpan(
                            text: "$mainBio\n\n",
                            style: const TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: note,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: primaryPurple,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
