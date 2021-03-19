import 'package:flutter/material.dart';
import 'package:ngabflutter/homepage.dart';
import 'package:ngabflutter/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("DouDes-Login")),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (v) => Signup()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50),
                child: Text(
                  "DouDes",
                  style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      fontSize: 40),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Email",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: "Password",
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 150,
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.red,
                  child: Text("Login"),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (v) => Home()));
                  },
                ),
              ),
              SizedBox(
                height: 125,
              ),
              Text("New In DouDes??? Create Account")
            ],
          ),
        ));
  }
}
