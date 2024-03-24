//Model which holds user data

class AppUser {
  final String email;
  final String name;
  // String? position;
  // String? hospital;

  AppUser({
    required this.email,
    required this.name,
    // this.position,
    // this.hospital,
  });

  //factory to create objects from database maps
  factory AppUser.fromMap(Map map) {
    return AppUser(
      email: map['user_email'],
      name: map['user_name'],
      // position: map['position'],
      // hospital: map['hospital'],
    );
  }

  //function to create maps for database
  Map<String, dynamic> toMap() {
    return {
      'user_email': email,
      'user_name': name,
      // 'position': position,
      // 'hospital': hospital,
    };
  }
}
