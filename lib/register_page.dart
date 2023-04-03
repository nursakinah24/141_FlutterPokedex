import 'package:flutter/material.dart';
import 'package:flutter_pokedex/home_page.dart';
import 'package:flutter_pokedex/login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  bool _obscureText1 = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                alignment: Alignment.topLeft,
                child: ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 40, height: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(236, 243, 192, 26),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(24),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Image.network(
                  'https://www.pngall.com/wp-content/uploads/13/Pokemon-Logo-PNG-Pic.png',
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment.topCenter,
                  child: RichText(
                      text: const TextSpan(
                          text: 'Register',
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(236, 243, 192, 26))))),
              Container(
                margin: EdgeInsets.only(top: 20, left: 18),
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
                padding: EdgeInsets.only(left: 15, right: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter your name',
                      contentPadding: EdgeInsets.all(15.0),
                      prefixIcon:
                          Icon(Icons.person, size: 30, color: Colors.blue),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama Tidak Boleh Kosong';
                    }
                    if (!value.contains(value)) {
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
                margin: EdgeInsets.only(top: 10, left: 18),
                alignment: Alignment.topLeft,
                child: const Text(
                  'Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 20),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      contentPadding: EdgeInsets.all(15.0),
                      prefixIcon:
                          Icon(Icons.email, size: 30, color: Colors.blue),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue))),
                  validator: (value) {
                    if (!value!.contains('@')) {
                      return 'Format Email Salah';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 18),
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
                padding: EdgeInsets.only(left: 15, right: 20),
                child: TextFormField(
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    //border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(15.0),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    prefixIcon: Icon(Icons.lock, size: 30, color: Colors.blue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText1 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText1 = !_obscureText1;
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
              Container(
                margin: EdgeInsets.only(top: 10, left: 18),
                alignment: Alignment.topLeft,
                child: const Text(
                  'Re-Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 20, bottom: 20),
                child: TextFormField(
                  obscureText: _obscureText2,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    //border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(15.0),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)),
                    prefixIcon: Icon(Icons.lock, size: 30, color: Colors.blue),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText2 ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText2 = !_obscureText2;
                        });
                      },
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    if (value != password) {
                      return 'Passwords do not match';
                    }
                    if (value.length < 6) {
                              return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    confirmPassword = value;
                  },
                ),
              ),
              ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 370, height: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(236, 243, 192, 26),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      //padding: EdgeInsets.all(24),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                       // _formKey.currentState!.save();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              name: name,
                            ),
                          ),
                        );
                        //setState(() {});
                      }
                    },
                    child: const Text(
                      'Register',
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    if (!value!.contains('@')) {
      return 'False format email!';
    }
    return null;
  }
}
