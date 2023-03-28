// import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is Fun!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
        drawer: const Drawer(
          child: Text('Yo!'),
        ),
        /* body: ListView(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          children: [
            Container(
              color: Colors.blue,
              width: 500,
              height: 500,
            ),
            Container(
              color: Colors.orange,
              width: 500,
              height: 500,
            ),
            Container(
              color: Colors.green,
              width: 500,
              height: 500,
            ),
          ],
        ), */
        /* body: ListView.builder(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          itemBuilder: (_, index) {
            return Container(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              width: 500,
              height: 500,
            );
          },
        ), */
        /* body: const Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: Text('Hi Mom 🥇'),
              ),
            ) */
        /* body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(
                  flex: 4,
                  child: Icon(Icons.backpack, color: Colors.green),
                ),
                Icon(Icons.leaderboard, color: Colors.green),
                Icon(Icons.person, color: Colors.green),
              ],
            ) */
        /* body: Stack(
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            /* const Positioned(
              top: 50,
              left: 50,
              child: Icon(Icons.verified),
            ), */
            const Align(
              alignment: Alignment.center,
              child: Icon(Icons.verified),
            ),
          ],
        ), */
        /* body: Center(
          child: Text(
            '$count',
            style: const TextStyle(fontSize: 50),
          ),
        ), */
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Home'),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('About'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AboutScreen(),
            ),
          );
        },
        child: const Text('Navigate'),
      ),
    );
  }
}
