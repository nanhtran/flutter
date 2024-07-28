import 'package:day1/pages/day1/day2_screen.dart';
import 'package:flutter/material.dart';

class Day1Screen extends StatelessWidget {
  const Day1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 1"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Day 1"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Day2Screen(),
                    ),
                  );
                },
                child: const Text("Day 2"))
          ],
        ),
      ),
    );
  }
}
