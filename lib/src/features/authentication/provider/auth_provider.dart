import 'dart:convert';
import 'dart:io';
import 'package:first_aid_app/src/features/authentication/model/user_model.dart';
import 'package:first_aid_app/src/features/authentication/screens/otp/otp_screen.dart';
import 'package:first_aid_app/src/utils/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider1 extends ChangeNotifier {
  User? get _currentUser => FirebaseAuth.instance.currentUser;

  /// True if the user is signed in _and_ not anonymous.
  bool get isFullySignedIn =>
      _currentUser != null && !_currentUser!.isAnonymous;

  // Optionally, if you want a convenience for “guest”:
  bool get isGuest => _currentUser != null && _currentUser!.isAnonymous;

  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  String? _errorMessage;
  String? get errorMessage => _errorMessage;
  String? _uid;
  String get uid => _uid ?? '';
  UserModel? _userModel;
  UserModel? get userModel => _userModel;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // ignore: unused_field
  User? _user;

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  AuthProvider1() {
    _initialize();
    _auth.authStateChanges().listen((user) {
      _user = user;
      _isLoading = false;
      notifyListeners();

      // If they’re a real user, fetch their profile from Firestore
      if (user != null && !user.isAnonymous) {
        _loadUserModel();
      }
    });
  }

  Future<void> _initialize() async {
    try {
      _isLoading = true;
      notifyListeners();

      await checkSignIn();
      if (_isSignedIn) {
        await _loadUserData();
      }
    } catch (e) {
      _errorMessage = 'Initialization failed: ${e.toString()}';
      debugPrint('Initialization error: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> checkSignIn() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("is_signedin") ?? false;
  }

  Future<void> _loadUserData() async {
    await getDataFromSP();
    if (_userModel == null) {
      await getDataFromFirestore();
    }
  }

  // saving topics to db
  Future<void> saveTopic(String title, String imageUrl, String type) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      throw Exception('User not logged in.');
    }

    final docRef = FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .collection('savedTopics')
        .doc(title); // or use a custom ID

    await docRef.set({'title': title, 'image': imageUrl, 'type': type});
  }

  // Firestore Operations
  Future<void> getDataFromFirestore() async {
    try {
      _isLoading = true;
      _errorMessage = null;
      notifyListeners();

      final user = _firebaseAuth.currentUser;
      if (user == null) {
        _errorMessage = 'No authenticated user found';
        return;
      }

      final snapshot = await _firebaseFirestore
          .collection("users")
          .doc(user.uid)
          .get();

      if (snapshot.exists) {
        _userModel = UserModel(
          name: snapshot['name'] ?? 'No Name',
          email: snapshot['email'] ?? 'No Email',
          bio: snapshot['bio'] ?? '',
          profilePic: snapshot['profilePic'] ?? '',
          createdAt: snapshot['createdAt'] ?? '',
          phoneNumber: snapshot['phoneNumber'] ?? '',
          uid: user.uid,
        );
        _uid = user.uid;
        await saveUserDataToSP();
      } else {
        _errorMessage = 'User data not found in database';
      }
    } catch (e) {
      _errorMessage = 'Failed to load user data: ${e.toString()}';
      debugPrint('Firestore load error: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Storage Operations
  Future<String> uploadFile(String path, File file) async {
    try {
      final ref = _firebaseStorage.ref().child(path);
      final uploadTask = ref.putFile(file);
      final snapshot = await uploadTask;
      return await snapshot.ref.getDownloadURL();
    } catch (e) {
      debugPrint('Error uploading file: $e');
      rethrow;
    }
  }

  Future<void> updateProfilePicture(File imageFile) async {
    try {
      _isLoading = true;
      notifyListeners();

      final user = _firebaseAuth.currentUser;
      if (user == null) throw Exception('User not logged in');

      final imageUrl = await uploadFile('profile_pics/${user.uid}', imageFile);
      await _firebaseFirestore.collection("users").doc(user.uid).update({
        'profilePic': imageUrl,
      });

      _userModel = _userModel?.copyWith(profilePic: imageUrl);
      await saveUserDataToSP();
    } catch (e) {
      _errorMessage = 'Failed to update profile picture: ${e.toString()}';
      debugPrint('Profile picture update error: $e');
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // Local Storage Operations

  // Authentication Operations
  Future<void> setSignIn() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    await s.setBool("is_signedin", true);
    _isSignedIn = true;
    notifyListeners();
  }

  Future<void> userSignOut() async {
    try {
      _isLoading = true;
      notifyListeners();

      await _firebaseAuth.signOut();
      final s = await SharedPreferences.getInstance();
      await s.clear();

      _isSignedIn = false;
      _userModel = null;
      _uid = null;
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Logout failed: ${e.toString()}';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  // guest login
  Future<void> signInAnonymously() async {
    _isLoading = true;
    notifyListeners();
    try {
      await _auth.signInAnonymously();
      // mark that we have a session
      await setSignIn();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> _loadUserModel() async {
    // load your UserModel from Firestore into _userModel, then:
    notifyListeners();
  }

  //signin with google
  Future<void> signInWithGoogle(
    BuildContext context,
    Function onNewUser,
    Function onExistingUser,
  ) async {
    _isLoading = true;
    notifyListeners();

    try {
      final userCredential = await _firebaseAuth.signInWithProvider(
        GoogleAuthProvider(),
      );

      if (userCredential.user != null) {
        _uid = userCredential.user!.uid;

        final isNewUser = !(await checkExistingUser());

        if (isNewUser) {
          // Wait for user to complete profile (we'll store data later)
          onNewUser(); // e.g. navigate to UserInformationScreen
        } else {
          await getDataFromFirestore();
          await saveUserDataToSP();
          await setSignIn();
          onExistingUser(); // e.g. navigate to NavBar
        }
      }

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      showSnackBar(context, e.toString());
      _isLoading = false;
      notifyListeners();
    }
  }

  // signin with phone
  void signInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
          await _firebaseAuth.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (error) {
          throw Exception(error.message);
        },
        codeSent: (verificationId, forceResendingToken) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpScreen(verificationId: verificationId),
            ),
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message.toString());
    }
  }

  // verify otp
  void verifyOtp({
    required BuildContext context,
    required String verificationId,
    required String userOtp,
    required Function onSuccess,
  }) async {
    _isLoading = true;
    notifyListeners();

    try {
      PhoneAuthCredential creds = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: userOtp,
      );

      User? user = (await _firebaseAuth.signInWithCredential(creds)).user;

      if (user != null) {
        // carry our logic
        _uid = user.uid;
        onSuccess();
      }
      _isLoading = false;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message.toString());
      _isLoading = false;
      notifyListeners();
    }
  }

  // DATABASE OPERTAIONS
  Future<bool> checkExistingUser() async {
    DocumentSnapshot snapshot = await _firebaseFirestore
        .collection("users")
        .doc(_uid)
        .get();
    if (snapshot.exists) {
      print("USER EXISTS");
      return true;
    } else {
      print("NEW USER");
      return false;
    }
  }

  Future<void> saveUserDataToFirebase({
    required BuildContext context,
    required UserModel userModel,
    required File profilePic,
    required VoidCallback onSuccess,
  }) async {
    try {
      _isLoading = true;
      notifyListeners();

      final user = _firebaseAuth.currentUser;
      if (user == null) throw Exception('User not logged in');

      // Upload image if provided
      String imageUrl = userModel.profilePic;
      if (profilePic.path.isNotEmpty) {
        imageUrl = await uploadFile('profile_pics/${user.uid}', profilePic);
      }

      // Update user model
      final updatedUser = userModel.copyWith(
        profilePic: imageUrl,
        uid: user.uid,
        createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
      );

      // Save to Firestore
      await _firebaseFirestore
          .collection("users")
          .doc(user.uid)
          .set(updatedUser.toMap());

      _userModel = updatedUser;
      await saveUserDataToSP();
      onSuccess();
    } catch (e) {
      _errorMessage = 'Failed to save user data: ${e.toString()}';
      showSnackBar(context, _errorMessage!);
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<String> storeFileToStorage(String ref, File file) async {
    UploadTask uploadTask = _firebaseStorage.ref().child(ref).putFile(file);
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  //   Future<void> getDataFromFirestore() async {
  //   try {
  //     final user = _firebaseAuth.currentUser;
  //     if (user == null) {
  //       _isLoading = false;
  //       notifyListeners();
  //       return;
  //     }

  //     final snapshot = await _firebaseFirestore
  //         .collection("users")
  //         .doc(user.uid)
  //         .get();

  //     if (snapshot.exists) {
  //       _userModel = UserModel(
  //         name: snapshot['name'] ?? 'No Name',
  //         email: snapshot['email'] ?? 'No Email',
  //         bio: snapshot['bio'] ?? 'No Bio',
  //         profilePic: snapshot['profilePic'] ?? 'default_profile_pic.png',
  //         createdAt: snapshot['createdAt'] ?? DateTime.now().toString(),
  //         phoneNumber: snapshot['phoneNumber'] ?? 'No Phone',
  //         uid: snapshot['uid'] ?? user.uid,
  //       );
  //       _uid = user.uid;
  //     } else {
  //       // Create default user data if document doesn't exist
  //       _userModel = UserModel(
  //         name: 'New User',
  //         email: user.email ?? 'no-email@example.com',
  //         bio: '',
  //         profilePic: 'default_profile_pic.png',
  //         createdAt: DateTime.now().toString(),
  //         phoneNumber: user.phoneNumber ?? '',
  //         uid: user.uid,
  //       );
  //       await _firebaseFirestore.collection("users").doc(user.uid).set(_userModel!.toMap());
  //     }
  //   } catch (e) {
  //     debugPrint('Error loading user data: $e');
  //   } finally {
  //     _isLoading = false;
  //     notifyListeners();
  //   }
  // }

  // STORING DATA LOCALLY
  Future<void> saveUserDataToSP() async {
    if (_userModel == null) return;

    try {
      final s = await SharedPreferences.getInstance();
      await s.setString("user_model", jsonEncode(_userModel!.toMap()));
    } catch (e) {
      debugPrint('Error saving to SharedPreferences: $e');
    }
  }

  Future<void> getDataFromSP() async {
    try {
      final s = await SharedPreferences.getInstance();
      final data = s.getString("user_model");

      if (data != null && data.isNotEmpty) {
        _userModel = UserModel.fromMap(jsonDecode(data));
        _uid = _userModel?.uid ?? '';
      }
    } catch (e) {
      debugPrint('Error loading from SharedPreferences: $e');
    }
  }
}
