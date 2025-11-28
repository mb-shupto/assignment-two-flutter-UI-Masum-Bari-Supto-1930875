import 'package:flutter/material.dart';
import 'package:assignment_two_flutter/widgets/action_button.dart';
import 'package:assignment_two_flutter/widgets/balance_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static const Color primaryPurple = Color(0xFF5B46EB);

  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Home Page')),
    Center(child: Text('Reports Page')),
    Center(child: Text('Cards Page')),
    Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 20,
        toolbarHeight: 90,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CircleAvatar(
            radius: 24,
            backgroundColor: primaryPurple,
            child: const Text(
              'S',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),


            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Welcome back,',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  'STUDENT NAME',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined, size: 28),
            onPressed: () {},
          ),
          const SizedBox(width: 10),
        ],
      ),



      body: SafeArea(child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A50FF), Color(0xFF5B46EB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Total Balance",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    "\$8,945.32",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Savings: \$5,500',
                        style: TextStyle(
                          color: Colors.white70
                        ),
                      ),

                      Row(
                        children: const [
                            Icon(Icons.trending_up,
                            color: Colors.green,
                            size:20),
                          SizedBox(
                            width: 4),
                          Text(
                            'Last 30 days: +\$330',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}