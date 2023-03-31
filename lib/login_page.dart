import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  String? name;
  String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child:   
            Image.network(
              'https://www.freepnglogos.com/uploads/pokemon-logo-png-0.png'),
          ),
           Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: RichText(
                    text: TextSpan(
                        text: "Let's Get Started",
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(236, 243, 192, 26))))),
        ],
      ),
    ));
  }
}
