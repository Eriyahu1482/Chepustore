import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFielWidgetState();
}

class _TextFielWidgetState extends State<TextFieldWidget> {
    TextEditingController _nicknameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

  late String _nickname;
  late String _email;
  late String _password;
  bool _showLogin = true;

  void _userAction() {
    _nickname = _nicknameController.text;
    _email = _emailController.text;
    _password = _passwordController.text;

    _nicknameController.clear();
    _emailController.clear();
    _passwordController.clear();
  }
  @override
  Widget build(BuildContext context) {

    Widget _input(
      TextEditingController controller, 
      String hintTitle, 
      bool obcText,
      ){
        return Container(
          child: TextField(
            controller: controller,
            obscureText: obcText,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintStyle: const TextStyle(
                fontSize: 15,
                color: Colors.white30,
                fontWeight: FontWeight.w500
              ),
              hintText: hintTitle,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(70, 51, 111, 1), width: 2)
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(70, 51, 111, 1), width: 2)
                  ),
                    ),
                ),
              );
    }

    Widget _loginButton(String buttonText, void Function() onPress,){
      return ElevatedButton(
        onPressed: () {
          onPress();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(70, 51, 111, 1),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white, fontSize: 15,),),
      );
    }

    Widget _form(String buttonText, void Function()  onPress) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            const Text('Имя', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,),),
              const SizedBox(height: 10),
            Container(
              child: _input(_nicknameController, 'Введите имя', false),
            ),
            const SizedBox(height: 10),
            const Text('Почта', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,),),
            const SizedBox(height: 10),
             Container(
              child: _input(_emailController, 'Введите почту', false),
             ),
             const SizedBox(height: 10),
            const Text('Пароль', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,),),
             const SizedBox(height: 10),
             Container(
              child: _input(_passwordController, 'Введите пароль', true),
             ),
             const SizedBox(height: 20),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: _loginButton(buttonText, _userAction),
            )
          ],
        ),
      );
    }

    return Column(
      children:<Widget>[
      _showLogin
      ? Column(
        children: [
          _form('Войти?', _userAction),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              setState(() {
                _showLogin = false;
              });
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 206),
              child: Row(
                children: [ Text('Есть аккаунт? ',
              style: TextStyle(fontSize: 15, color: Colors.white),),
               Text('Войти',
              style: TextStyle(fontSize: 15, color: Color.fromRGBO(70, 51, 111, 1), decoration: TextDecoration.underline),),],),
            ),
          )
        ],
      )
      : Column(
          children: [
          _form('Войти?', _userAction),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              setState(() {
                _showLogin = false;
              });
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 206),
              child: Row(
                children: [ Text('Есть аккаунт? ',
              style: TextStyle(fontSize: 15, color: Colors.white),),
               Text('Войти',
              style: TextStyle(fontSize: 15, color: Color.fromRGBO(70, 51, 111, 1), decoration: TextDecoration.underline),),],),
            ),
          )
          ]
      )
      ]
    );
  }
}