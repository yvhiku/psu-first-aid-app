import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/src/constants/text_strings.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/authentication/screens/user_info/user_info.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneController = TextEditingController();

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
    phoneController.selection = TextSelection.fromPosition(
      TextPosition(offset: phoneController.text.length),
    );

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text(tLogin), centerTitle: true, elevation: 0),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              Image(
                image: const AssetImage(tWelcomeScreenImage),
                height: size.height * 0.2,
              ),
              Text(
                tLoginTitle,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins",
                ),
              ),
              Text(
                tLoginSubTitle,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins",
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // const SizedBox(height: tFormHeight - 20),
                  // TextFormField(
                  //   cursorColor: tSecondaryColor,
                  //   controller: phoneController,
                  //   style: const TextStyle(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  //   onChanged: (value) {
                  //     setState(() {
                  //       phoneController.text = value;
                  //     });
                  //   },
                  //   decoration: InputDecoration(
                  //     labelText: tPhoneNum,
                  //     labelStyle: const TextStyle(color: tSecondaryColor),
                  //     border: const OutlineInputBorder(),
                  //     focusedBorder: const OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //         width: 2.0,
                  //         color: tSecondaryColor,
                  //       ),
                  //     ),
                  //     prefixIcon: Container(
                  //       padding: const EdgeInsets.only(top: 11, left: 8),
                  //       child: InkWell(
                  //         onTap: () {
                  //           showCountryPicker(
                  //             context: context,
                  //             countryListTheme: const CountryListThemeData(
                  //               bottomSheetHeight: 550,
                  //             ),
                  //             onSelect: (value) {
                  //               setState(() {
                  //                 selectedCountry = value;
                  //               });
                  //             },
                  //           );
                  //         },
                  //         child: Text(
                  //           "${selectedCountry.flagEmoji} + ${selectedCountry.phoneCode}",
                  //           style: const TextStyle(
                  //             fontSize: 18,
                  //             color: Colors.black,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     suffixIcon: phoneController.text.length > 9
                  //         ? Container(
                  //             height: 30,
                  //             width: 30,
                  //             margin: const EdgeInsets.all(10.0),
                  //             decoration: const BoxDecoration(
                  //               shape: BoxShape.circle,
                  //               color: Colors.green,
                  //             ),
                  //             child: const Icon(
                  //               Icons.done,
                  //               color: Colors.white,
                  //               size: 20,
                  //             ),
                  //           )
                  //         : null,
                  //   ),
                  // ),
                  // const SizedBox(height: tFormHeight - 10),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     style: OutlinedButton.styleFrom(
                  //       elevation: 0,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadiusGeometry.all(
                  //           Radius.circular(20),
                  //         ),
                  //       ),
                  //       foregroundColor: tWhiteColor,
                  //       backgroundColor: tPrimaryColor,
                  //       side: BorderSide(color: tSecondaryColor),
                  //       padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                  //     ),
                  //     onPressed: () => sendPhoneNumber(),
                  //     child: Text(tLogin.toUpperCase()),
                  //   ),
                  // ),
                  // const SizedBox(height: tFormHeight - 20),
                  // const Text("OR"),
                  const SizedBox(height: 30),
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
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                      ),
                      onPressed: () async {
                        final ap = Provider.of<AuthProvider1>(
                          context,
                          listen: false,
                        );
                        await ap.signInWithGoogle(
                          context,
                          () {
                            // New user: show user info form
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const UserInformationScreen(),
                              ),
                            );
                          },
                          () {
                            // Existing user: go to home
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (_) => const NavBar()),
                            );
                          },
                        );
                      },
                      label: Text(tSignInWithGoogle),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Add contact support button at the bottom
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextButton(
                  onPressed: () => Get.to(() => const ContactSupportScreen()),
                  child: Text.rich(
                    TextSpan(
                      text: "Need help? ",
                      style: TextStyle(color: Colors.grey[600]),
                      children: const [
                        TextSpan(
                          text: "Contact Support",
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

  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider1>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }
}
