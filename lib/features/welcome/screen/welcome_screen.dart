import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synapse_ai/features/welcome/widget/welcome_logo.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize = screenWidth * 0.06;

    return Scaffold(
      backgroundColor: Color(0xfff7f8f6),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: fontSize * 4,
            left: fontSize,
            right: fontSize,
            bottom: fontSize,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // icon
              const WelcomeLogo(),
              SizedBox(height: screenWidth * 0.1),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // welcome heading
                  Text(
                    'Master something new in every',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w800,
                      fontSize: fontSize * 1.5,
                    ),
                  ),

                  Text(
                    'scroll.',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w800,
                      color: Colors.green,
                      fontSize: fontSize * 1.5,
                    ),
                  ),
                ],
              ),

              SizedBox(height: screenWidth * 0.1),

              // welcome subheading
              Text(
                'Turn your social media time into bite-sized learning sessions with Synapse AI.',
                textAlign: TextAlign.center,
                maxLines: 3,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w400,
                  fontSize: fontSize * 0.7,
                ),
              ),

              // get started button
              SizedBox(height: screenWidth * 0.2),

              ElevatedButton(
                onPressed: () {
                  // Navigate to sign up screen
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.2,
                    vertical: screenWidth * 0.04,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: fontSize * 0.7,
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: screenWidth * 0.05),
              // already have an account text button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize * 0.6,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to login screen
                    },
                    child: Text(
                      'Log In',
                      style: GoogleFonts.plusJakartaSans(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        fontSize: fontSize * 0.6,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
