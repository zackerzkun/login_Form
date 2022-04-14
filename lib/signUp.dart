import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: _formKey,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 0, 64, 128),
          Color.fromARGB(255, 0, 26, 52)
        ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Please Sign In For App",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
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
                      label: Text("Username"),
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person),
                      prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Field is Empty";
                      }
                      return null;
                    },
                  ),
                ),
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
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      label: Text("Password"),
                      hintText: "-----",
                      prefixIcon: Icon(Icons.lock),
                      prefixStyle: TextStyle(color: Colors.transparent, fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      suffixIcon: Container(
                        padding: EdgeInsets.only(right: 10),
                      ),
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
                      suffixIcon: Container(
                        padding: EdgeInsets.only(right: 10),
                      ),
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
                height: 10,
                width: 200,
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
                      Navigator.pushNamed(context, '/signup1');
                    },
                    child: Center(
                      child: Text("Create Account", style: TextStyle(fontSize: 20, color: Colors.white)),
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
            ],
          ),
        ),
      ),
    );
  }
}
