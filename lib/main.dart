import 'package:flutter/material.dart';
import 'package:flutter_pokedex/login_page.dart';
import 'package:flutter_pokedex/welcome_page.dart';

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

/* class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
          children: [
/*             Column(
              children: [
                Image.network(
                    'https://www.freepnglogos.com/uploads/pokemon-logo-png-0.png'),
                Container(
                  width: 10,
                )
              ],
            ), */
            RichText(
              text: TextSpan(
                text: 'Pokedex.',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(236, 243, 192, 26)
                )
              ),
            ),
            Text('Welcome to Pokedex \nYou Can find your favorite pokemon here',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey
            ),
            ),
          ],
        ),
      ),
    ),
    );
  }
} */

/* 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 /*      appBar: AppBar(
        title: Text(widget.title),
      ), */
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
} */
