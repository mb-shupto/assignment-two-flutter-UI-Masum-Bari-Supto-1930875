import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  const CustomAppBar({super.key, required this.title});

  static const Color primaryPurple = Color(0xFF5B46EB);



  @override
  Widget build(BuildContext context) {
    return  AppBar(
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
                'Masum-Ul-Bari Supto',
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
