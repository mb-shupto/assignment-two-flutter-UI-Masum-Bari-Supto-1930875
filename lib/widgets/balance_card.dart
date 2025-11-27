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
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        color: color,
        elevation: 2,
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: LayoutBuilder(builder: (context, constraints) {
              // scale values based on available height so measurements remain consistent
              final baseHeight = 120.0;
              final scale = (constraints.maxHeight / baseHeight).clamp(0.75, 1.25);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18 * scale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6 * scale),
                  Text(
                    subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13 * scale,
                    ),
                  ),
                  const Spacer(),
                  if (showMoreIcon)
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white70,
                        size: 20 * scale,
                      ),
                    ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
