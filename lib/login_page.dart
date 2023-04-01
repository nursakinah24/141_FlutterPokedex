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
            margin: EdgeInsets.only(top: 30),
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/2560px-International_Pok%C3%A9mon_logo.svg.png',
                width: 400,
                height: 200),
          ),
          Container(
              // margin: EdgeInsets.only(top: 20),
              //alignment: Alignment.topCenter,
              child: RichText(
                  text: TextSpan(
                      text: "Let's Get Started",
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(236, 243, 192, 26))))),
          Container(
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.topCenter,
            child: Text(
              'There is No Sense In Going Out of \n Your Way to Get Somebody to Like You.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 18),
            alignment: Alignment.topLeft,
            child: Text(
              'Name',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 17, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            //margin: EdgeInsets.only(left: ),
            /*  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(const Size(380, 200)), */
            padding: EdgeInsets.only(left: 15, right: 20),
            child: TextFormField(
              decoration: const InputDecoration(
                // labelText: 'Name',
                hintText: 'Enter your name',
                //border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.all(20.0),
                prefixIcon: Icon(Icons.person, size: 30, color: Colors.blue),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue))
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama Tidak Boleh Kosong';
                }
                return null;
              },
              onSaved: (value) {
                name = value;
              },
            ),
          )
        ],
      ),
    ));
  }
}
