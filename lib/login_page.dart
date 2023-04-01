import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pokedex/home_page.dart';
import 'package:flutter_pokedex/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  String? name;
  String? password;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
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
                              text: const TextSpan(
                                  text: "Let's Get Started",
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Color.fromARGB(236, 243, 192, 26))))),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        alignment: Alignment.topCenter,
                        child: const Text(
                          'There is No Sense In Going Out of \n Your Way to Get Somebody to Like You.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 18),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Name',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
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
                              contentPadding: EdgeInsets.all(20.0),
                              prefixIcon: Icon(Icons.person,
                                  size: 30, color: Colors.blue),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nama Tidak Boleh Kosong';
                            }
                            if (!value!.contains(value)) {
                              return 'Please enter a valid name!';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            name = value;
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25, left: 18),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(left: 15, right: 20, bottom: 45),
                        child: TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            //border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(20.0),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            prefixIcon:
                                Icon(Icons.lock, size: 30, color: Colors.blue),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            password = value;
                          },
                        ),
                      ),
                      ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 370, height: 50),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(236, 243, 192, 26),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              //padding: EdgeInsets.all(24),
                            ),
                            onPressed: () {
                              if (_formkey.currentState!.validate()) {
                                _formkey.currentState!.save();
                                if (name == 'kina' && password == '123456') {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(
                                        name: name,
                                      ),
                                    ),
                                  );
                                  setState(() {});
                                } /* else {
                                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Incorrect email or password')));
                                } */
                              }
                            },
                            child: const Text(
                              'Sign In',
                            ),
                          )),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 5,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Color.fromARGB(236, 243, 192, 26),
                                      fontWeight: FontWeight.bold),
                                )),
                          ]),
                    ],
                  ),
                ))));
  }
}
