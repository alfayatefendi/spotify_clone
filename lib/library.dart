import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        color: const Color.fromARGB(255, 30, 30, 30),
        child: Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, left: 20),
                    width: 40,
                    height: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/img/3.jpg',
                        height: 60,
                        width: 60,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 68, 68, 68),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40, left: 20),
                    child: const Text(
                      "Your Libray",
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
                      Ionicons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 40, right: 20),
                    child: const Icon(
                      Ionicons.add,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    margin: const EdgeInsets.only(
                        top: 25, bottom: 10, left: 20, right: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 68, 68, 68),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Playlists",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    margin: const EdgeInsets.only(top: 25, bottom: 10, right: 10),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 68, 68, 68),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Podcasts & Shows",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Expanded(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Ionicons.arrow_up_outline,
                                color: Colors.white,
                                size: 15,
                              ),
                              SizedBox(),
                              Icon(
                                Ionicons.arrow_down_outline,
                                color: Colors.white,
                                size: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Recents",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(child: SizedBox()),
                              Icon(
                                Ionicons.grid_outline,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          //playlist
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              //liked songd
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 80,
                                      height: 80,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          'assets/img/1.jpg',
                                          height: 80,
                                          width: 80,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Liked Songs",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Playlist",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 168, 168, 168),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              //drake
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 80,
                                      height: 80,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          'assets/img/3.jpg',
                                          height: 80,
                                          width: 80,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Scorpion",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Album by Drake",
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 168, 168, 168),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              //Juice wrld
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    SizedBox(
                                      width: 80,
                                      height: 80,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          'assets/img/7.jpg',
                                          height: 80,
                                          width: 80,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Goodbyes & Good Riddance",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(height: 5), // Adjust spacing
                                          Text(
                                            "Album by Juice World",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 168, 168, 168),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),

                              //add podcasts
                              SizedBox(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(255, 78, 78, 78),
                                      ),
                                      child: const Icon(
                                        Ionicons.add,
                                        color: Colors.grey,
                                        size: 40,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Add Podcasts & Shows",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}