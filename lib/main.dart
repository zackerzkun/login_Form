import 'package:flutter/material.dart';
import 'login.dart';
import 'route.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
