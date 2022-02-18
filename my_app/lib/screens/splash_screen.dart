import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

class MySplash extends StatelessWidget {
  const MySplash({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Splash Screen',
	theme: ThemeData(
		primarySwatch: Colors.green,
	),
	home: const Splash2(),
	debugShowCheckedModeBanner: false,
	);
}
}
class Splash2 extends StatelessWidget {
  const Splash2({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return SplashScreen(
	seconds: 6,
	navigateAfterSeconds: const SecondScreen(),
	title: const Text('MyGyme',textScaleFactor: 2,),
	image: Image.network('https://cdn4.vectorstock.com/i/1000x1000/56/28/fitness-gym-logo-with-athletic-man-training-black-vector-20315628.jpg'),
	loadingText: const Text("Loading"),
	photoSize: 100.0,
	loaderColor: Colors.blue,
	);
}
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(title:const Text("GeeksForGeeks")),
	body: const Center(
		child:Text("Home page",textScaleFactor: 2,)
	),
	);
}
}

