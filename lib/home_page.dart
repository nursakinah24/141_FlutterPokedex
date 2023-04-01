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
                  padding:
                      EdgeInsets.only(top: 10, left: 15, right: 20, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Pokemon',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(15.0),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                  ))
            ],
          ),
          SingleChildScrollView(
              child: Column(
            children: <Widget>[
              SizedBox(
                  height: 170,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 30),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text('#001',
                                      style: TextStyle(color: Colors.grey)),
                                  Container(width: 10),
                                  Text('Bulbasaur',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              SizedBox.fromSize(size: Size(5, 5),),
                              Row(
                                children: [
                                  Container(
                                      width: 50, // set width to 200 pixels
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Align(
                                        child: const Text('Grass',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ) // set height to 100 pixels
                                      ),
                                  Container(width: 5),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.topLeft,
                                      width: 50, // set width to 200 pixels
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Align(
                                        child: const Text('Poison',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      )),
                                ],
                              ),
                              SizedBox.fromSize(size: Size(5, 5),),
                              Row(
                                children: [
                                  const Text(
                                      "Bulbasaur can be seen napping in bright \nsunlight. There is a seed on its back. \nBy soaking up the sun's rays, the seed\ngrows progressively larger.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ), 
                 
                  )),
                    SizedBox(
                  height: 170,
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 30),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          child: Image.network(
                            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text('#002',
                                      style: TextStyle(color: Colors.grey)),
                                  Container(width: 10),
                                  Text('Ivysaur',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              SizedBox.fromSize(size: Size(5, 5),),
                              Row(
                                children: [
                                  Container(
                                      width: 50, // set width to 200 pixels
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Align(
                                        child: const Text('Grass',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ) // set height to 100 pixels
                                      ),
                                  Container(width: 5),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      alignment: Alignment.topLeft,
                                      width: 50, // set width to 200 pixels
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Align(
                                        child: const Text('Poison',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      )),
                                ],
                              ),
                              SizedBox.fromSize(size: Size(5, 5),),
                              Row(
                                children: [
                                  const Text(
                                      "There is a bud on this Pokémon's back.\nTo support its weight, Ivysaur's legs and\ntrunk grow thick and strong. If it starts\nspending more time lying in the sunlight,\nit's a sign that the bud will bloom into a\nlarge flower soon.",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ), 
                 
                  )),
            ],
          ))
        ],
      ),
    );
  }
}
