import 'package:flutter/material.dart';

class Day4Screen extends StatefulWidget {
  const Day4Screen({super.key, required this.email, required this.phone});
  final String email;
  final String phone;

  @override
  State<Day4Screen> createState() => _Day4ScreenState();
}

class _Day4ScreenState extends State<Day4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Day 4"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.email),
            Text(widget.phone),
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
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    },
                    child: const Text("Home")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
