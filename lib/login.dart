import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 0, 64, 128),
          Color.fromARGB(255, 0, 26, 52)
        ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        child: Center(
          child: Container(
              child: Card(
            elevation: 2,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 0, 64, 128),
                  Color.fromARGB(255, 0, 26, 52)
                ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
                child: Form(
                  key: _formKey,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                              label: Text("input Email"),
                              hintText: "user@mail.com",
                              prefixIcon: Icon(Icons.email),
                              prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                              filled: true,
                              fillColor: Colors.blue[50],
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
                              prefixStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),

                              filled: true,
                              fillColor: Colors.blue[50],
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
                      Container(
                        height: 35,
                        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: RaisedButton(
                            color: Colors.blue,
                            hoverColor: Colors.blue[400],
                            child: Center(
                                child: Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            )),
                            onPressed: () {
                              if (_formKey.currentState.validate()) ;
                            }),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        color: Colors.blueAccent,
                        elevation: 5,
                        shape: StadiumBorder(),
                        child: Container(
                          height: 45,
                          width: 130,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Center(
                              child: Text(
                                "Sign Up",
                                style: TextStyle(fontSize: 20, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Or",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        color: Colors.green,
                        elevation: 5,
                        shape: StadiumBorder(),
                        child: Container(
                          height: 45,
                          width: 200,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {
                              Navigator.pushNamed(context, '/Forgot');
                            },
                            child: Center(
                              child: Text("Forgot Password ?", style: TextStyle(fontSize: 20, color: Colors.black)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          )),
        ),
      ),
    );
  }
}
