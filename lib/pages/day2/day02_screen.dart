import 'package:day1/pages/day2/day02_form_screen.dart';
import 'package:flutter/material.dart';

class Day02Screen extends StatefulWidget {
  const Day02Screen({super.key});

  @override
  State<Day02Screen> createState() => _Day02ScreenState();
}

class _Day02ScreenState extends State<Day02Screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Day 02 Screen ne"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "All", icon: Icon(Icons.home)),
              Tab(text: "Favorite", icon: Icon(Icons.search)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                const Text("All"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Day02FormScreen()),
                      );
                    },
                    child: const Text("Form"))
              ],
            ),
            Column(
              children: [Text("Favorite")],
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: const Drawer(
          elevation: 20,
          child: Column(children: [
            UserAccountsDrawerHeader(
              accountName: Text('Phat'),
              accountEmail: Text('ptrnvnh@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.w3schools.com/w3images/avatar2.png'),
              ),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            Divider(height: 0.2),
            ListTile(
              title: Text('Change pasword'),
              leading: Icon(Icons.password),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          ],
        ),
      ),
    );
  }
}
