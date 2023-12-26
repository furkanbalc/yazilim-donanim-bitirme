class UserModel {
  String? uid;
  String? username;
  String? profileImageUrl;
  String? email;
  String? location;
  String? phoneNumber;
  bool? isActive;
  int? donated;
  int? received;
  int? totalProduct;

  UserModel({
    this.uid,
    this.username,
    this.profileImageUrl,
    this.email,
    this.location,
    this.phoneNumber,
    this.isActive,
    this.donated = 0,
    this.received = 0,
    this.totalProduct = 0,
  });

  UserModel copyWith({
    String? uid,
    String? username,
    String? profileImageUrl,
    String? email,
    String? location,
    String? phoneNumber,
    bool? isActive,
    int? donated,
    int? received,
    int? totalProduct,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      username: username ?? this.username,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      email: email ?? this.email,
      location: location ?? this.location,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      isActive: isActive ?? this.isActive,
      donated: donated ?? this.donated,
      received: received ?? this.received,
      totalProduct: totalProduct ?? this.totalProduct,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'username': username,
      'profileImageUrl': profileImageUrl,
      'email': email,
      'location': location,
      'phoneNumber': phoneNumber,
      'isActive': isActive,
      'donated': donated,
      'received': received,
      'totalProduct': totalProduct,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String?,
      username: json['username'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      isActive: json['isActive'] as bool?,
      donated: json['donated'] as int?,
      received: json['received'] as int?,
      totalProduct: json['totalProduct'] as int?,
    );
  }
}
