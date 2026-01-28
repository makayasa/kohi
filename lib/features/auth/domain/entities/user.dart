class User {
  User({
    required this.uuid,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.point,
    required this.createdAt,
    required this.updatedAt,
    required this.token,
  });

  String uuid;
  String name;
  String email;
  String phoneNumber;
  int point;
  String createdAt;
  String updatedAt;
  String token;
}
