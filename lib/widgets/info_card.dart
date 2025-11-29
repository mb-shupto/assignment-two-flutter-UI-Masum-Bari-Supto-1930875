import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color iconColor;

  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    this.iconColor = const Color(0xFF5B46EB),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
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

      child: Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey
              ),
              ),

              const SizedBox(height: 4),
              Text(value,style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
