import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CategoryBar extends StatelessWidget {
  final String label;
  final String amount;
  final double percentage;
  final Color color;
  
  const CategoryBar({
    super.key,
    required this.label,
    required this.amount,
    required this.percentage,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return 
      Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            width: 12,
              height: 12,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
          ),
          
          
          const SizedBox(width: 12),
          
          Expanded(
            flex: 3,
            child: Text(
              label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          ),
          ),
          
          
          Expanded(
              flex: 2,
              child: Text(
            amount,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.right,
          ),
          ),

          const SizedBox(width: 12),
          Expanded(child: LinearPercentIndicator(
            lineHeight: 8.0,
            percent: percentage,
            backgroundColor: Colors.grey[200]!,
            progressColor: color,
            animation: true,
            animationDuration: 1200,
            barRadius: const Radius.circular(10),
            padding: EdgeInsets.zero,
          ),
          ),
          const SizedBox(width: 12),

          Text("${(percentage * 100).toInt()}%",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          )
        ],
      ),
      );
  }
}
