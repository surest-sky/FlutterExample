class UserModel {
  UserModel({
    required this.name,
    required this.age,
  });

  UserModel.fromJson(dynamic json) {
    name = json['name'] ?? "";
    age = json['age'] ?? "";
  }

  late String name;
  late String age;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['age'] = age;
    return map;
  }
}
