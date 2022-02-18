import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:my_app/screens/home.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const Home());
}

void initialization(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 3));
}


