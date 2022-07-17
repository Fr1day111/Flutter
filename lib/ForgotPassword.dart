import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 24),
            child: Center(
              child: RichText(
                  text: const TextSpan(
                      text: "Create new Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                    TextSpan(
                        text:
                            ' \nYour new password must be different from previous password',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 15,
                        ))
                  ])),
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
            child: TextField(
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
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Password"),
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
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Confirm Password"),
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
                    onPressed: null,
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
