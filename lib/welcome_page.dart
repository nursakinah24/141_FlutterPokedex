import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pokedex/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 80),
                alignment: Alignment.topCenter,
                child: RichText(
                    text: TextSpan(
                        text: 'Pokedex.',
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(236, 243, 192, 26))))),
            Container(
              margin: EdgeInsets.only(top: 30),
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome to Pokedex \nYou can find your favorite pokemon here',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              alignment: Alignment.topCenter,
              child: Image.network(
                  'https://cutewallpaper.org/24/pokeballs-png/pokeball-png-photo-image-png-play.png'),
              width: 200,
              height: 200,
            ),
            Container(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: Icon(Icons.arrow_right_alt_sharp),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(236, 243, 192, 26),
                shape: CircleBorder(),
                padding: EdgeInsets.all(24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
