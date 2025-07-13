import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/authentication/screens/user_info/user_info.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

// Login screen allows Google Sign-In, guest sign-in, or fallback to phone.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controller for phone input field
  final TextEditingController phoneController = TextEditingController();
  bool _isLoading = false;

  // Default selected country (Russia) for phone auth
  Country selectedCountry = Country(
    phoneCode: "7",
    countryCode: "RU",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Russia",
    example: "Russia",
    displayName: "Russia",
    displayNameNoCountryCode: "RU",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    // Ensures cursor is always at end of input
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(offset: phoneController.text.length),
    );

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).tLogin),
        centerTitle: true,
        elevation: 0,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(tDefaultSize),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 100),
                    // Illustration image
                    Image(
                      image: const AssetImage(tWelcomeScreenImage),
                      height: size.height * 0.2,
                    ),
                    // Title text
                    Text(
                      S.of(context).tLoginTitle,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                    // Subtitle text
                    Text(
                      S.of(context).tLoginSubTitle,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        // Google sign-in button
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            icon: Image(
                              image: AssetImage(tGoogleLogoImage),
                              width: 20.0,
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.all(
                                  Radius.circular(20),
                                ),
                              ),
                              foregroundColor: tSecondaryColor,
                              side: BorderSide(color: tSecondaryColor),
                              padding: EdgeInsets.symmetric(
                                vertical: tButtonHeight,
                              ),
                            ),
                            onPressed: () async {
                              setState(() {
                                _isLoading = true;
                              });

                              final ap = Provider.of<AuthProvider1>(
                                context,
                                listen: false,
                              );
                              await ap.signInWithGoogle(
                                context,
                                () {
                                  // For new user (navigate to user info)
                                  setState(() {
                                    _isLoading = false;
                                  });
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          const UserInformationScreen(),
                                    ),
                                  );
                                },
                                () {
                                  // For existing user (go straight to NavBar)
                                  setState(() {
                                    _isLoading = false;
                                  });
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const NavBar(),
                                    ),
                                  );
                                },
                              );
                            },
                            label: Text(S.of(context).tSignInWithGoogle),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    // Continue as guest button
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
                          padding: EdgeInsets.symmetric(
                            vertical: tButtonHeight,
                          ),
                        ),
                        onPressed: () async {
                          setState(() => _isLoading = true);

                          final ap = Provider.of<AuthProvider1>(
                            context,
                            listen: false,
                          );
                          await ap.signInAnonymously();

                          setState(() => _isLoading = false);

                          Get.offAll(() => const NavBar());
                        },
                        child: Text(
                          'CONTINUE AS GUEST',
                          style: const TextStyle(letterSpacing: 1.2),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                    // Contact support link
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextButton(
                        onPressed: () =>
                            Get.to(() => const ContactSupportScreen()),
                        child: Text.rich(
                          TextSpan(
                            text: "${S.of(context).tNeedHelp} ",
                            style: TextStyle(color: Colors.grey[600]),
                            children: [
                              TextSpan(
                                text: S.of(context).tContactSupport,
                                style: TextStyle(
                                  color: tPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  // Function to initiate phone sign-in
  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider1>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }
}
