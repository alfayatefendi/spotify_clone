import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:math';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List categories = [
    {
      //key : value
      "name": "podcasts",
    },
    {
      //key : value
      "name": "Top sellers",
    },
    {
      //key : value
      "name": "New",
    },
    {
      //key : value
      "name": "UK Drill",
    },
    {
      //key : value
      "name": "Rai",
    },
    {
      //key : value
      "name": "HipHop",
    },
    {
      //key : value
      "name": "Rap",
    },
    {
      //key : value
      "name": "Love",
    },
    {
      //key : value
      "name": "Classical",
    },
    {
      //key : value
      "name": "Rap DZ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: const Color.fromARGB(255, 30, 30, 30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: const Text(
                  "Search",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.only(top: 40, right: 20),
                child: const Icon(
                  Ionicons.camera_outline,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
          //searchbox
          Container(
              margin: const EdgeInsets.all(20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: const Row(
                children: [
                  SizedBox(
                    child: Icon(
                      Ionicons.search,
                      color: Color.fromARGB(255, 30, 30, 30),
                    ),
                    height: double.infinity,
                    width: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      "What do you want to listen to?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 104, 104, 104),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: const Text(
              "Browse all",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ...List.generate(categories.length ~/ 2, (index) {
                    // Generate a random color for each tile
                    Color randomColor1 =
                        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                            .withOpacity(1.0);
                    Color randomColor2 =
                        Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                            .withOpacity(1.0);

                    // Calculate the indexes for the two categories
                    int firstIndex = index * 2;
                    int secondIndex = index * 2 + 1;

                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: randomColor1,
                              ),
                              child: Center(
                                child: Text(
                                  categories[firstIndex]['name'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: randomColor2,
                              ),
                              child: Center(
                                child: Text(
                                  categories[secondIndex]['name'],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
