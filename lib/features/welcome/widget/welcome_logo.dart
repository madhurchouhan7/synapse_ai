import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeLogo extends StatelessWidget {
  const WelcomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth * 0.06;

    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.05),
        width: screenWidth * 0.4,
        height: screenWidth * 0.4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
          color: Colors.white70,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            // logo
            Icon(
              Icons.lightbulb_outline,
              size: fontSize * 3,
              color: Colors.green,
            ),

            SizedBox(height: screenWidth * 0.02),

            // text
            Text(
              'Synapse AI',
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.bold,
                fontSize: fontSize * 0.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
