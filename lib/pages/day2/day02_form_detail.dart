import 'package:flutter/material.dart';

class Day02FormDetail extends StatefulWidget {
  const Day02FormDetail({super.key, required this.name, required this.email});
  final String name;
  final String email;

  @override
  State<Day02FormDetail> createState() => _Day02FormDetailState();
}

class _Day02FormDetailState extends State<Day02FormDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(
        child: Column(
          children: [Text(widget.name), Text(widget.email)],
        ),
      ),
    );
  }
}
