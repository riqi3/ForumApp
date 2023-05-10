// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:project_forum/backend/ApiError.dart';

// import 'package:project_forum/model/LoginModel.dart';
// import 'package:project_forum/backend/ApiResponse.dart';

// import '../main.dart';

// final _formKey = GlobalKey<FormState>();

// // String? _username;
// // String? _password;
// ApiResponse apiResponse = ApiResponse();
// // String envurl = 'http://10.0.2.2:8000/';

// // void initState() {
// //   _username = '';
// //   _password = '';
// //   initState();
// // }

// Future<ApiResponse> authenticateUser(String username, String password) async {
//   try {
//     //change the url response. ang idea kay pangitaon to ang link nga 
//     //maka login ang admin
//     final response =
//         await http.post(Uri.parse('${envurl}api/login'), body: {
//       'username': username,
//       'password': password,
//     });

//     switch (response.statusCode) {
//       case 200:
//         apiResponse.Data = LoginModel.fromJson(json.decode(response.body));
//         break;
//       case 401:
//         apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
//         break;
//       default:
//         apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
//         break;
//     }
//   } on SocketException {
//     apiResponse.ApiError = ApiError(error: "Server error. Please retry");
//   }
//   return apiResponse;
// }

// Future<ApiResponse> getUserDetails(String id) async {
//   try {
//     final response = await http.get(Uri.parse('${envurl}user/$id'));

//     switch (response.statusCode) {
//       case 200:
//         apiResponse.Data = LoginModel.fromJson(json.decode(response.body));
//         break;
//       case 401:
//         apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
//         break;
//       default:
//         apiResponse.ApiError = ApiError.fromJson(json.decode(response.body));
//         break;
//     }
//   } on SocketException {
//     apiResponse.ApiError = ApiError(error: "Server error. Please retry");
//   }
//   return apiResponse;
// }

// class LoginScreen extends StatefulWidget {
//   LoginScreen({super.key});

//   @override
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();

//   // fetchLogin() async {
//   //   // final url = 'http://127.0.0.1:8000/apis/v1/?format=json';
//   //   final url = 'http://127.0.0.1:8000/user/?format=api';
//   //   final response = await http.get(Uri.parse(url));
//   //   if (response.statusCode == 200) {
//   //     // var data = json.decode(response.body) as List;
//   //     // users = data
//   //     //     .map<LoginModel>((json) => LoginModel.fromJson(json))
//   //     //     .toList();
//   //     notifyListeners();
//   //   } else {
//   //     print('a network error occured');
//   //   }
//   // }
// }

// class _LoginScreenState extends State<LoginScreen> {
//   late final TextEditingController _usernameTextField;
//   late final TextEditingController _passwordTextField;

//   // String get username => _username;
//   // set username(String username) => username = username;
//   // String get password => password;
//   // set password(String password) => password = password;

//   @override
//   void initState() {
//     _usernameTextField = TextEditingController();
//     _passwordTextField = TextEditingController();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _usernameTextField.dispose();
//     _passwordTextField.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           _textFields(
//             usernameTextField: _usernameTextField,
//             passwordTextField: _passwordTextField,
//           ),
//           Text(
//             '${_usernameTextField.text}',
//             style: TextStyle(color: Colors.red, fontSize: 50),
//           ),
//           Text(
//             '${_passwordTextField.text}',
//             style: TextStyle(color: Colors.red, fontSize: 50),
//           ),
 
//           Container(
//             child: Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: _loginPressed,
//                   child: Text('Login'),
//                 ),
//                 ElevatedButton(
//                   onPressed: _createAccPressed,
//                   child: Text('create acc'),
//                 ),
//                 ElevatedButton(
//                   onPressed: _passwordReset,
//                   child: Text('reset pass'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _loginPressed() async {
//     final FormState? form = _formKey.currentState;

//     if (!form!.validate()) {
//       print('The user wants to login111');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//             content: Text(
//                 'error cant login user: ${_usernameTextField.text} pass ${_passwordTextField.text}')),
//       );
      
//       // form?.save();

//       // apiResponse = await authenticateUser(_passwordTextField.text, _usernameTextField.text);
//       //    print('The user wants to login111');
//       //   Navigator.of(context).pushNamed(
//       //     '/home',
//       //   );
//       // if ((apiResponse.ApiError) == null) {

//       // }
//     } else {
//       print('The user wants to login22222');
//       form.save();
//       apiResponse = await authenticateUser(
//           _passwordTextField.text, _usernameTextField.text);
//       if ((apiResponse.ApiError as ApiError) == null) {
//         Navigator.of(context).pushNamed(
//           '/home',
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Wrong credentials')),
//         );
//         if ((apiResponse.ApiError as ApiError) == null) {
//         Navigator.of(context).pushNamed(
//           '/home',
//         );
//       }
//       }
//     }
//   }

// // Future<void> _loginPressed() async {
// //     print('The user wants to login');
// //     // final GlobalKey<FormState> form = _formKey;

// //     //   form.save();
// //       apiResponse = await authenticateUser(_usernameTextField.toString(), _passwordTextField.toString());
// //       if ((apiResponse.ApiError as ApiResponse) == null) {
// //         Navigator.of(context).pushNamed(
// //           '/home',
// //         );
// //       }

// //   }
// }

// void _createAccPressed() async {
//   print('The user wants to create an account');
// }

// void _passwordReset() {
//   print('The user wants to password reset');
// }

// class _textFields extends StatelessWidget {
//   const _textFields({
//     super.key,
//     required TextEditingController usernameTextField,
//     required TextEditingController passwordTextField,
//   })  : _usernameTextField = usernameTextField,
//         _passwordTextField = passwordTextField;

//   final TextEditingController _usernameTextField;
//   final TextEditingController _passwordTextField;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       autovalidateMode: AutovalidateMode.always,
//       key: _formKey,
//       child: Container(
//         child: Column(
//           children: [
//             Container(
//               child: TextFormField(
//                 keyboardType: TextInputType.text,
//                 key: const Key("_username"),
//                 controller: _usernameTextField,
//                 // onSaved: (value) {
//                 //   _username = value;
//                 // },
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                 ),
//                 validator: (value) {
//                   if (value == '') {
//                     return 'Username is required';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             Container(
//               child: TextFormField(
//                 keyboardType: TextInputType.text,
//                 key: const Key("_password"),
//                 controller: _passwordTextField,
//                 // onSaved: (value) {
//                 //   _password = value;
//                 // },
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                 ),
//                 // obscureText: true,
//                 validator: (value) {
//                   if (value == '') {
//                     return 'Password is required';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
