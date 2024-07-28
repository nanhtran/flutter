import 'package:day1/pages/day1/day4_screen.dart';
import 'package:flutter/material.dart';

class Day3Screen extends StatefulWidget {
  const Day3Screen({super.key, required this.name});
  final String name;

  @override
  State<Day3Screen> createState() => _Day3ScreenState();
}

class _Day3ScreenState extends State<Day3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 3"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.name),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back")),
                const Padding(padding: EdgeInsets.all(10)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Day4Screen(
                                  email: "dev.thuanngo@gmail.com",
                                  phone: "0909999999",
                                )),
                      );
                    },
                    child: const Text("Day 4")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
