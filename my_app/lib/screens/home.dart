import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  const MyGridScreen({Key? key}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 20,
          mainAxisSpacing: 50,
          maxCrossAxisExtent: 200.0,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Gyme',
                style: TextStyle(fontSize: 20),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://thumbs.dreamstime.com/b/metal-dumbbell-gym-background-d-rendering-78457398.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: 350,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://thumbs.dreamstime.com/b/metal-dumbbell-gym-background-d-rendering-78457398.jpg"'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.2, sigmaY: 1.0),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Diets', style: TextStyle(fontSize: 20)),
              color: Colors.blue,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Traniner', style: TextStyle(fontSize: 20)),
              color: Colors.blue,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Four', style: TextStyle(fontSize: 20)),
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Fifth', style: TextStyle(fontSize: 20)),
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Six', style: TextStyle(fontSize: 20)),
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
