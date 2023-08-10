
class UserModel {
  late String name;
  late String email;
  late String phone;
  late String uId;
  late String address;

  UserModel({
    required this.email,
    required this.name,
    required this.phone,
    required this.uId,
    required this.address,
  });

  UserModel.fromJson(Map<String, dynamic>? json) {
    email = json!['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    address = json['address'];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'uId': uId,
      'address': address,
    };
  }
}
