import 'package:flutter/material.dart';

class Resetpwd extends StatefulWidget {
  @override
  _resetPwd createState() => _resetPwd();
}

class _resetPwd extends State<Resetpwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 0, 64, 128),
          Color.fromARGB(255, 0, 26, 52)
        ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Password Reset ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  'Your Password has been reset Sucsessfull',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 30),
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
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Center(
                    child: Text("Continue for Sign In", style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
