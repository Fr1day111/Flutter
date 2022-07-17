import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/Dashboard.dart';
import 'package:untitled1/DetailPage.dart';

import 'RegisterPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formkey = GlobalKey<FormState>();
  bool _isPasswordHidden = true;
  var userNameController = TextEditingController();
  var userPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Container(
              child: Column(
                children: [
                  Lottie.asset('Assets/GIFs/Dog.json'),
                  TextFormField(
                    controller: userNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter name';
                      }
                      if (value.split(" ").length == 1) {
                        return 'Enter full name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter name',
                        labelText: 'Name',
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    controller: userPassController,
                    obscureText: _isPasswordHidden,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Passowrd';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: Icon(_isPasswordHidden
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isPasswordHidden = !_isPasswordHidden;
                            });
                          },
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            String name = userNameController.text;
                            String pass = userPassController.text;

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashBoardPage(name, pass),
                                ));
                          }

                        },
                        child: Text('Submit'),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ));
                          },
                          child: Text('Register'))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


