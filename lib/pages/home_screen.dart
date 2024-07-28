import 'package:day1/pages/day1/day1_screen.dart';
import 'package:day1/pages/day2/day02_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 1")),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day02Screen()),
                          );
                        },
                        child: const Text("Day 2")),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 3")),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 4")),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 5")),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 6")),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 7")),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 8")),
                  ],
                ),
                const Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Day1Screen()),
                          );
                        },
                        child: const Text("Day 9")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
