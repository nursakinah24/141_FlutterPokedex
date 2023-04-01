import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.name});

  final String? name;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                alignment: Alignment.topLeft,
                child: RichText(
                    text: TextSpan(
                  text: 'Hello, ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: '${widget.name}',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ],
                ))),
            Container(width: 250),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: Image.network(
                'https://www.pngall.com/wp-content/uploads/13/Pokemon-Logo-PNG-Pic.png',
              ),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(top: 10, left: 20),
                alignment: Alignment.topLeft,
                child: RichText(
                    text: TextSpan(
                  text: 'Pokedex',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(236, 243, 192, 26)),
                ))),
          ]),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10, left: 15, right: 20),
                  child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search Pokemon',
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(15.0),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                ),
                style: TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    searchText = value;
                  });
                },
              ))
            ],
          )
        ],
      ),
    );
  }
}
