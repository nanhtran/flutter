import 'package:day1/pages/day2/day02_form_detail.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Day02FormScreen extends StatefulWidget {
  const Day02FormScreen({super.key});

  @override
  State<Day02FormScreen> createState() => _Day02FormScreenState();
}

class _Day02FormScreenState extends State<Day02FormScreen> {
  final _form = GlobalKey<FormState>();
  late String? _radioValue = "user";
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Form(
        key: _form,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _name,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'What do people call you?',
                    labelText: 'Name *',
                  ),
                  validator: (String? value) {
                    if (value == null || value == "") {
                      return "Name should be not empty";
                    }
                    return null;
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 221, 221, 221)),
                    color: const Color.fromARGB(255, 247, 247, 247),
                    borderRadius: BorderRadius.circular(5.0)),
                child: TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'What do people call you?',
                      label: Row(
                        children: [
                          Text("Email"),
                          Text(
                            "*",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      )),
                  validator: (String? value) {
                    if (value == null || value == "") {
                      return "Email should be not empty";
                    }
                    if (!EmailValidator.validate(value)) {
                      return "Email should be email format";
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('user'),
                    leading: Radio<String>(
                      value: "user",
                      groupValue: _radioValue,
                      onChanged: (String? value) {
                        setState(() {
                          _radioValue = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Admin'),
                    leading: Radio<String>(
                      value: "admin",
                      groupValue: _radioValue,
                      onChanged: (String? value) {
                        setState(() {
                          _radioValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (_form.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Day02FormDetail(
                                      name: _name.text,
                                      email: _email.text,
                                    )),
                          );
                        }
                      },
                      child: const Text("Submit"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
