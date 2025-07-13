import 'dart:io';

import 'package:first_aid_app/src/constants/colors.dart';
import 'package:first_aid_app/src/constants/image_strings.dart';
import 'package:first_aid_app/src/constants/sizes.dart';
import 'package:first_aid_app/generated/l10n.dart';
import 'package:first_aid_app/src/features/authentication/model/user_model.dart';
import 'package:first_aid_app/src/features/authentication/provider/auth_provider.dart';
import 'package:first_aid_app/src/features/authentication/screens/contacts/contact_support.dart';
import 'package:first_aid_app/src/features/core/controllers/widgets/navbar.dart';
import 'package:first_aid_app/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// Screen that allows the user to update their profile (edit name, email, bio, photo)
class UpdatedProfileScreen extends StatefulWidget {
  const UpdatedProfileScreen({super.key});

  @override
  State<UpdatedProfileScreen> createState() => _UpdatedProfileScreenState();
}

class _UpdatedProfileScreenState extends State<UpdatedProfileScreen> {
  File? image; // Holds selected image file
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final bioController = TextEditingController();

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    nameController.dispose();
    emailController.dispose();
    bioController.dispose();
    super.dispose();
  }

  // Opens file picker and sets selected image
  void selectImage() async {
    image = await pickImage(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Listen to auth provider loading state
    final isLoading = Provider.of<AuthProvider1>(context).isLoading;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).tEditProfile),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: isLoading
            ? const Center(child: CircularProgressIndicator(color: tPrimaryColor))
            : SingleChildScrollView(
                padding: const EdgeInsets.all(tDefaultSize),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Profile image picker
                    GestureDetector(
                      onTap: selectImage,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: image == null
                                ? AssetImage(tProfileImg) as ImageProvider
                                : FileImage(image!),
                            backgroundColor: Colors.grey.shade200,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: tPrimaryColor,
                              child: const Icon(Icons.camera_alt, size: 18, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: tFormHeight),

                    // Form fields
                    _buildTextField(
                      context: context,
                      controller: nameController,
                      icon: Icons.person_outline,
                      label: S.of(context).tFullname,
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    _buildTextField(
                      context: context,
                      controller: emailController,
                      icon: Icons.email_outlined,
                      label: S.of(context).tEmail,
                    ),
                    const SizedBox(height: tFormHeight - 20),
                    _buildTextField(
                      context: context,
                      controller: bioController,
                      icon: Icons.edit_outlined,
                      label: S.of(context).ttellOthersAboutYou,
                      maxLines: 3,
                    ),
                    const SizedBox(height: tFormHeight - 10),

                    // Save button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          foregroundColor: tWhiteColor,
                          backgroundColor: tPrimaryColor,
                          padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
                        ),
                        onPressed: storeData,
                        child: Text(S.of(context).tcontinue),
                      ),
                    ),
                    const SizedBox(height: tFormHeight - 10),

                    // Contact support link
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const ContactSupportScreen()),
                      ),
                      child: Text.rich(
                        TextSpan(
                          text: "${S.of(context).tNeedHelp} ",
                          style: TextStyle(color: Colors.grey[600]),
                          children: [
                            TextSpan(
                              text: S.of(context).tContactSupport,
                              style: const TextStyle(
                                color: tPrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }

  // Builds a styled text field with icon, used for name/email/bio
  Widget _buildTextField({
    required BuildContext context,
    required TextEditingController controller,
    required IconData icon,
    required String label,
    int maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      cursorColor: tPrimaryColor,
      style: GoogleFonts.poppins(fontSize: 16, color: tPrimaryColor),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.grey.shade600),
        prefixIcon: Icon(icon, color: tPrimaryColor),
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: tPrimaryColor, width: 2),
        ),
      ),
    );
  }

  // Saves user data to Firebase + local storage + navigates to home
  void storeData() async {
    final ap = Provider.of<AuthProvider1>(context, listen: false);

    UserModel userModel = UserModel(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      bio: bioController.text.trim(),
      profilePic: "",
      createdAt: "",
      phoneNumber: "",
      uid: "",
    );

    if (image != null) {
      ap.saveUserDataToFirebase(
        context: context,
        userModel: userModel,
        profilePic: image!,
        onSuccess: () {
          ap.saveUserDataToSP().then(
            (_) => ap.setSignIn().then(
              (_) => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const NavBar()),
                (route) => false,
              ),
            ),
          );
        },
      );
    } else {
      showSnackBar(context, S.of(context).tpleaseUploadPhoto);
    }
  }
}
