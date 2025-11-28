import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final double width;
  final double height;
  final double borderRadius;
  final VoidCallback? onTap;
  final bool showMoreIcon;

  const BalanceCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.color = Colors.indigoAccent,
    this.width = 200,
    this.height = 120,
    this.borderRadius = 12,
    this.onTap,
    this.showMoreIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
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
                          style: TextStyle(color: Colors.white70),
                        ),

                        Row(
                          children: const [
                            Icon(
                              Icons.trending_up,
                              color: Colors.green,
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Last 30 days: +\$330',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
