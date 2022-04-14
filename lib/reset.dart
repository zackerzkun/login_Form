import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  @override
  _Reset createState() => _Reset();
}

class _Reset extends State<Reset> {
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
            "Reset Password",
            style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                // decoration
                decoration: InputDecoration(
                  // icon: Icon(Icons.email),
                  contentPadding: EdgeInsets.all(5),
                  label: Text("Password"),
                  hintText: "-----",
                  prefixIcon: Icon(Icons.lock),
                  prefixStyle: TextStyle(color: Colors.transparent, fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  suffixIcon: Container(padding: EdgeInsets.only(right: 10)),
                  filled: true,
                  fillColor: Colors.white,
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Field is Empty";
                  } else if (value.length < 8) {
                    return "Password less than 8 Characters";
                  }
                  return null;
                },
                obscureText: true,
                onChanged: (data) {
                  setState(() {});
                },
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextFormField(
                // decoration
                decoration: InputDecoration(
                  // icon: Icon(Icons.email),
                  contentPadding: EdgeInsets.all(5),
                  label: Text("Confirm Password"),
                  hintText: "-----",
                  prefixIcon: Icon(Icons.lock),
                  prefixStyle: TextStyle(color: Colors.transparent, fontWeight: FontWeight.w500),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  suffixIcon: Container(padding: EdgeInsets.only(right: 10)),
                  filled: true,
                  fillColor: Colors.white,
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Field is Empty";
                  } else if (value.length < 8) {
                    return "Password less than 8 Characters";
                  }
                  return null;
                },
                obscureText: true,
                onChanged: (data) {
                  setState(() {});
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
                  Navigator.pushNamed(context, '/resetsucses');
                },
                child: Center(
                  child: Text("Reset", style: TextStyle(fontSize: 20, color: Colors.white)),
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
