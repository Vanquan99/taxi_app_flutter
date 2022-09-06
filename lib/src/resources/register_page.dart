import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.asset('das'),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  'welcome',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const Text(
                'signup',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "name",
                    prefixIcon: SizedBox(
                      width: 50,
                      child: Image.asset("abc.png"),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              TextField(
                style: TextStyle(fontSize: 10, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "phone nuber",
                    prefixIcon: SizedBox(
                      width: 50,
                      child: Image.asset("abc.png"),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
