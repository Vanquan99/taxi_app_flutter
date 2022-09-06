import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taxiappflutter/src/resources/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 140,
              ),
              Image.asset('link anh'),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                child: Text(
                  'Welcome back!',
                  style: TextStyle(fontSize: 22, color: Colors.teal),
                ),
              ),
              const Text(
                "login to continue using Icar",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 145, 0, 20),
                child: TextField(
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: SizedBox(
                      width: 50,
                      child: Image.asset(''),
                    ),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              TextField(
                style: const TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: SizedBox(
                    width: 50,
                    child: Image.asset(""),
                  ),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                ),
              ),
              Container(
                constraints:
                    BoxConstraints.loose(const Size(double.infinity, 40)),
                alignment: AlignmentDirectional.centerEnd,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    "Forgot password",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.blue,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                    text: TextSpan(
                        text: "New user? ",
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                        children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()));
                            },
                          text: "Sign up for a new account",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ))
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
