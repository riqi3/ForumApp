class LoginModel  {
 late int _id;
 late String _username;
 late String _password;

 

  LoginModel({
    required int id,
    required String username,
    required String password,
  }){
     _id=id;
     _username=username;
     _password=password;
  }

    int get id => _id;
  set id(int id) => _id = id;
    String get username => _username;
  set username(String username) => _username = username;
    String get password => _password;
  set password(String password) => _password = password;
 

  //   factory LoginModel.fromJson(Map<String, dynamic> json) {
  //   return LoginModel(
  //     id: json['id'],
  //     username: json['username'],
  //     password:  json['password'],
  //   );
  // }
      LoginModel.fromJson(Map<String, dynamic> json) {

      _id: json['id'];
      _username: json['username'];
      _password:  json['password'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this._id;
    data['username'] = this._username;
    data['name'] = this._password;
    return data;
  }
}