import 'package:assignment_two_flutter/widgets/app_bar.dart';
import 'package:assignment_two_flutter/widgets/category_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/cupertino.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  static const Color foodColor = Colors.red;
  static const Color shoppingColor = Colors.purple;
  static const Color housingColor = Colors.orange;
  static const Color transportColor = Colors.green;
  static const Color otherColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFFF8F9FF),

      appBar: const CustomAppBar(title: "Report Page"),

      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 10),
            
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
                ],
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Total Expenses (Last 30 days)",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey),
                  ),

                  const SizedBox(height: 12),
                  const Text("-\$1279.00",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  ),

                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.arrow_upward, color: Colors.red, size: 20),
                      SizedBox(width: 6),
                      Text("Up 12% from last month",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const Text("Spending Breakdown",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            ),

            const SizedBox(height: 20),

            CategoryBar(label: "Food & Drink", amount: "\$450.00", percentage: 0.35, color: Colors.red),
            CategoryBar(label: "Shopping", amount: "\$320.00", percentage: 0.25, color: Colors.deepPurpleAccent),
            CategoryBar(label: 'Housing', amount: "\$280.00", percentage: 0.22, color: CupertinoColors.systemYellow),
            CategoryBar(label: 'Transport', amount: '\$150.00', percentage: 0.22, color: CupertinoColors.systemGreen),
            CategoryBar(label: 'Other', amount: '\$70.00', percentage: 0.06, color: CupertinoColors.systemGrey),

          ],
        ),
      )),
    );
  }
}
