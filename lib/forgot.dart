import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  _Forgot createState() => _Forgot();
}

class _Forgot extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 0, 64, 128),
        Color.fromARGB(255, 0, 26, 52)
      ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                // decoration
                decoration: InputDecoration(
                  // icon: Icon(Icons.email),
                  contentPadding: EdgeInsets.all(5),
                  label: Text("Input Email"),
                  hintText: "user@mail.com",
                  prefixIcon: Icon(Icons.email),
                  prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  filled: true,
                  fillColor: Colors.white,
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Field is Empty";
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return "Invalid Email";
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            color: Colors.blueAccent,
            elevation: 5,
            shape: StadiumBorder(),
            child: Container(
              height: 50,
              width: 200,
              child: InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Navigator.pushNamed(context, '/send');
                },
                child: Center(
                  child: Text("Send Verification", style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Already has an Account? Sign In",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ]),
      ),
    ));
  }
}
