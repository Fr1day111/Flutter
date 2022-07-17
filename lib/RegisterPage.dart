import 'package:flutter/material.dart';
import 'package:untitled1/Dashboard.dart';
import 'package:untitled1/main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _registerform = GlobalKey<FormState>();
  bool _isPasswordHidden = true;
  bool _isCPasswordHidden = true;
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _registerform,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 90),
              child: RichText(
                  text: const TextSpan(
                      text: "Welcome to",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text: ' Register Page',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 17,
                            fontWeight: FontWeight.bold))
                  ])),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 24),
              child: Text(
                "Name",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4, left: 24, right: 24),
              child: TextFormField(
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter your name"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 24),
              child: Text(
                "Email or phone number",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4, left: 24, right: 24),
              child: TextFormField(
                validator: (value){
                  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                  if(emailValid!=true){
                    return 'Email format not matched';
                  }
                  if(value.isEmpty){
                    return 'Cant be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter email or phone number"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 24),
              child: Text(
                "Password",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4, left: 24, right: 24),
              child: TextFormField(
                controller: _pass,
                obscureText: _isPasswordHidden,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Password';
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Password",
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
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 24),
              child: Text(
                "Confirm Password",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 4, left: 24, right: 24),
              child: TextFormField(
                controller: _confirmPass,
                obscureText: _isCPasswordHidden,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This field cant be empty';
                  }
                  if (value != _pass.text) {
                    return "Password Doesn't Match";
                  }
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Confirm Password",
                    suffixIcon: IconButton(
                      icon: Icon(_isCPasswordHidden
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isCPasswordHidden = !_isCPasswordHidden;
                        });
                      },
                    )),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 16, left: 24, right: 24),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: ElevatedButton(
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (_registerform.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DashBoardPage("",""),
                              ));
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    },
                    child: Text(
                      "Sign IN.",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
