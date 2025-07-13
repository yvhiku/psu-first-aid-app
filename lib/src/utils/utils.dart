import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// Displays a simple snackbar with the given text.
/// Usage: showSnackBar(context, "This is a message");
void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

/// Opens the device gallery to pick an image and returns it as a [File].
/// If something goes wrong, returns null and shows a snackbar with the error.
///
/// Usage:
/// ```dart
/// File? image = await pickImage(context);
/// if (image != null) { ... }
/// ```
Future<File?> pickImage(BuildContext context) async {
  File? image;
  try {
    // Opens the gallery using image_picker
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
    }
  } catch (e) {
    // On error, show snackbar with the exception message
    showSnackBar(context, e.toString());
  }

  return image;
}
