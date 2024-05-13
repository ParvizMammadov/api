class UserModel {
  final int age;
  final String name;
  final String email;
  final int phoneNumber;
  final String userName;
  UserModel({
    required this.age,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.userName,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        age: json['age'],
        name: json['name'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        userName: json['username'],
      );
}
