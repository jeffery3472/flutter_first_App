import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const JeffMainPage(),
    );
  }
}

class JeffMainPage extends StatelessWidget {
  const JeffMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.blue,
        title: const Text("Jeff's app"),
        actions: const [Icon(Icons.search), Icon(Icons.person)],
      ),
      body: Center(
          child: ListTile(
        leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/profile.jfif")),
        title: Text("Jeffery"),
        subtitle: Row(
          children: [
            Icon(
              Icons.done_all_sharp,
              color: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Text("money minded")
          ],
        ),
        trailing: Column(
          children: [
            Icon(
              Icons.notifications,
              color: Colors.green,
            ),
            SizedBox(
              height: 5,
            ),
            Text("4:55")
          ],
        ),
      )),
    );
  }
}
