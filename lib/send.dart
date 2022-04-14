import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  @override
  _Send createState() => _Send();
}

class _Send extends State<Send> {
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
                  'Check Your Email ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
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
                    Navigator.pushNamed(context, '/reset');
                  },
                  child: Center(
                    child: Text("Reset Password",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
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
    );
  }
}
