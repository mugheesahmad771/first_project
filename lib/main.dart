import 'package:collection/collection.dart';
import 'package:first_project/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color col = Colors.white;
  bool isHide = false;

  @override
  Widget build(BuildContext context) {
    // controller.text = this.text;
    return Scaffold(
        backgroundColor: col,
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          if (!isHide)
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (col == Colors.yellow) {
                      col = Colors.white;
                    } else {
                      col = Colors.yellow;
                    }
                  });
                },
                child: Text('1.Button'),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Hi Sir')));
                },
                child: Text('2.Button'),
              ),
            ]),
          Container(
            width: double.infinity,

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              if (!isHide)
                ElevatedButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SPage()),
                    );
                  },
                  child: Text('3.Button'),
                ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isHide = !isHide;
                  });
                },
                child: Text('4.Button'),
              ),
            ]),
          ),
        ]));
  }
}
