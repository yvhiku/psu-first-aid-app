// This class represents the data model for a user in your app.
// It encapsulates all the typical user profile fields.

class UserModel {
  // Fields holding user data
  final String name;
  final String email;
  final String bio;
  final String profilePic;
  final String createdAt;
  final String phoneNumber;
  final String uid;

  // Constructor with required named parameters to ensure
  // all fields must be provided when creating a UserModel instance.
  UserModel({
    required this.name,
    required this.email,
    required this.bio,
    required this.profilePic,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
  });

  // The copyWith method allows you to create a new UserModel instance
  // based on the current one, but with some fields changed.
  // This is very useful for immutable data patterns.
  UserModel copyWith({
    String? name,
    String? email,
    String? bio,
    String? profilePic,
    String? createdAt,
    String? phoneNumber,
    String? uid,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      bio: bio ?? this.bio,
      profilePic: profilePic ?? this.profilePic,
      createdAt: createdAt ?? this.createdAt,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      uid: uid ?? this.uid,
    );
  }

  // Factory constructor to create a UserModel from a map,
  // typically when reading from Firestore or other JSON-like sources.
  // Uses null-aware operators and toString to ensure type safety and avoid null errors.
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name']?.toString() ?? '',
      email: map['email']?.toString() ?? '',
      bio: map['bio']?.toString() ?? '',
      profilePic: map['profilePic']?.toString() ?? '',
      createdAt: map['createdAt']?.toString() ?? '',
      phoneNumber: map['phoneNumber']?.toString() ?? '',
      uid: map['uid']?.toString() ?? '',
    );
  }

  // Converts the UserModel back into a map.
  // Useful for writing to Firestore or local storage.
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'bio': bio,
      'profilePic': profilePic,
      'createdAt': createdAt,
      'phoneNumber': phoneNumber,
      'uid': uid,
    };
  }

  // Overriding == allows comparison of two UserModel instances
  // based on their data rather than memory reference.
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          bio == other.bio &&
          profilePic == other.profilePic &&
          createdAt == other.createdAt &&
          phoneNumber == other.phoneNumber &&
          uid == other.uid;

  // Overriding hashCode ensures this model works correctly
  // in sets, maps, and other hashed collections.
  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      bio.hashCode ^
      profilePic.hashCode ^
      createdAt.hashCode ^
      phoneNumber.hashCode ^
      uid.hashCode;

  // A readable string version of this model,
  // very handy for debugging print statements.
  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, bio: $bio, profilePic: $profilePic, '
        'createdAt: $createdAt, phoneNumber: $phoneNumber, uid: $uid)';
  }
}
