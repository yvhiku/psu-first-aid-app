class UserModel {
  final String name;
  final String email;
  final String bio;
  final String profilePic;
  final String createdAt;
  final String phoneNumber;
  final String uid;

  UserModel({
    required this.name,
    required this.email,
    required this.bio,
    required this.profilePic,
    required this.createdAt,
    required this.phoneNumber,
    required this.uid,
  });

  // Add copyWith method
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

  // Improved fromMap with better type safety
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

  // toMap remains the same but with more explicit typing
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

  // Optional: Add equality comparison and toString for debugging
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

  @override
  int get hashCode =>
      name.hashCode ^
      email.hashCode ^
      bio.hashCode ^
      profilePic.hashCode ^
      createdAt.hashCode ^
      phoneNumber.hashCode ^
      uid.hashCode;

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, bio: $bio, profilePic: $profilePic, '
        'createdAt: $createdAt, phoneNumber: $phoneNumber, uid: $uid)';
  }
}