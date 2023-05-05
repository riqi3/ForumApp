import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

enum FormType { login, register }

class _LoginScreenState extends State<LoginScreen> {
  TextStyle s = TextStyle(fontSize: 40);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailFilter = new TextEditingController();
    final TextEditingController _passwordFilter = new TextEditingController();
    String _email = "";
    String _password = "";
    FormType _form = FormType.login;

    void _emailListen() {
      if (_emailFilter.text.isEmpty) {
        _email = "";
      } else {
        _email = _emailFilter.text;
      }
    }

    void _passwordListen() {
      if (_passwordFilter.text.isEmpty) {
        _password = "";
      } else {
        _password = _passwordFilter.text;
      }
    }

    _LoginPageState() {
      _emailFilter.addListener(_emailListen);
      _passwordFilter.addListener(_passwordListen);
    }

    void _formChange() async {
      setState(() {
        if (_form == FormType.register) {
          _form = FormType.login;
        } else {
          _form = FormType.register;
        }
      });
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          _textFields(
            emailFilter: _emailFilter,
            passwordFilter: _passwordFilter,
          ),
          Container(
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: _loginPressed,
                  child: Text('Login'),
                ),
                ElevatedButton(
                  onPressed: _createAccPressed,
                  child: Text('create acc'),
                ),
                ElevatedButton(
                  onPressed: _passwordReset,
                  child: Text('reset pass'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _loginPressed() {
    print('The user wants to login');
  }

  void _createAccPressed() {
    print('The user wants to create an acc');
  }

  void _passwordReset() {
    print('The user wants to password reset');
  }
}

class _textFields extends StatelessWidget {
  const _textFields({
    super.key,
    required TextEditingController emailFilter,
    required TextEditingController passwordFilter,
  })  : _emailFilter = emailFilter,
        _passwordFilter = passwordFilter;

  final TextEditingController _emailFilter;
  final TextEditingController _passwordFilter;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: TextField(
              controller: _emailFilter,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            child: TextField(
              controller: _passwordFilter,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
          ),
        ],
      ),
    );
  }
}
