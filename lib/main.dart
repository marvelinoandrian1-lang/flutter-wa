import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.chat)),
              Tab(icon: Icon(Icons.add_circle_outline_rounded)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Card(
                  elevation: 30,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("biom"),
                    subtitle: Text("Bro! Ngantuk ya mapel ini..."),
                    trailing: Text("50", style: TextStyle(color: Colors.green)),
                  ),
                ),
                Card(
                  elevation: 30,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("marvel"),
                    subtitle: Text("Bro! Ngantuk ya mapel ini..."),
                    trailing: Text("50", style: TextStyle(color: Colors.green)),
                  ),
                ),
              ],
            ),
            ListView(
              children: const [
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text("Status Saya"),
                    subtitle: Text("Ketuk untuk menambahkan status"),
                    trailing: Icon(Icons.add),
                  ),
                ),
              ],
            ),

            ListView(
              children: const [
                Card(
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.call, color: Colors.red),
                    ),
                    title: Text("dizayy"),
                    subtitle: Text("3 minute ago", style: TextStyle(color: Colors.red),),
                    trailing: Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
