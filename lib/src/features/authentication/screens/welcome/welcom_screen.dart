import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Simple welcome screen shown on app start
// Lets user continue to login or directly to NavBar if already signed in
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    // AuthProvider to check if user is signed in
    final ap = Provider.of<AuthProvider1>(context, listen: true);

    // Get device height for responsive design
    final height = MediaQuery.of(context).size.height;

    // Cache localization instance to avoid repeated calls
    final s = S.of(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Top welcome illustration image
            Image(image: AssetImage(tWelcomeScreenImage), height: height * 0.6),

            // Titles
            Column(
              children: [
                Text(
                  s.tWelcomeTitle,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                  ),
                ),
                Text(
                  s.tWelcomeSubTitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),

            // Continue button (either to NavBar if signed in, or LoginScreen)
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  foregroundColor: tWhiteColor,
                  backgroundColor: tPrimaryColor,
                  side: BorderSide(color: tSecondaryColor),
                  padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ap.isSignedIn ? const NavBar() : const LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  s.tLogin.toUpperCase(),
                  style: const TextStyle(
                    letterSpacing: 1.2, // Helps uppercase look better
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }
}
