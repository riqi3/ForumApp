class RegisterModel{
  int id;
  String username;
  String firstname;
  String lastname;
  String email;
  String password;

  RegisterModel({
    required this.id,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.password,
  });

    factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      id: json['id'],
      username: json['username'],
      firstname: json['first_name'],
      lastname: json['last_name'],
      email:  json['email'],
      password:  json['password'],
    );
  }

    dynamic toJson() => {
        'id': id,
        'username': username,
        'first_name': firstname,
        'last_name':lastname,
        'email':email,
        'password':password,
      };
}