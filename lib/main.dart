// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Sample App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                child: Column(children: [
                  SearchBox(),
                  Divider(),
                  TopLocation(),
                  Divider(),
                  NearLocation(),
                  Divider(),
                  Suggestions(),
                  Divider(),
                  TopRated(),
                  Divider()
                ]),
              ),
            )),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

  Widget TopRated() => Container(
        child: Column(
          children: [
            TitleItem("Top Rated", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/bogazici.jpg", "Boğaziçi Köprüsü",
                      "10 km from you", "₺ 16.0"),
                  LocationItem("assets/images/kızkulesi.jpg", "Kız Kulesi",
                      "8 km from you", "₺ 100.0"),
                  LocationItem("assets/images/cıragan.jpg", "Çırağan Sarayı",
                      "7 km from you", "₺ 50.0"),
                  LocationItem("assets/images/ortakoy.jpg", "Ortaköy Camii",
                      "9 km from you", "₺ 0.0"),
                  LocationItem("assets/images/bogazici.jpg", "Boğaziçi Köprüsü",
                      "10 km from you", "₺ 16.0"),
                ],
              ),
            )
          ],
        ),
      );

  Widget Suggestions() => Container(
        child: Column(
          children: [
            TitleItem("Suggestions", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/cıragan.jpg", "Çırağan Sarayı",
                      "7 km from you", "₺ 50.0"),
                  LocationItem("assets/images/kızkulesi.jpg", "Kız Kulesi",
                      "8 km from you", "₺ 100.0"),
                  LocationItem("assets/images/bogazici.jpg", "Boğaziçi Köprüsü",
                      "10 km from you", "₺ 16.0"),
                  LocationItem("assets/images/ortakoy.jpg", "Ortaköy Camii",
                      "9 km from you", "₺ 0.0"),
                  LocationItem("assets/images/cıragan.jpg", "Çırağan Sarayı",
                      "7 km from you", "₺ 50.0"),
                ],
              ),
            )
          ],
        ),
      );

  Widget NearLocation() => Container(
        child: Column(
          children: [
            TitleItem("Near You", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/kızkulesi.jpg", "Kız Kulesi",
                      "8 km from you", "₺ 100.0"),
                  LocationItem("assets/images/bogazici.jpg", "Boğaziçi Köprüsü",
                      "10 km from you", "₺ 16.0"),
                  LocationItem("assets/images/cıragan.jpg", "Çırağan Sarayı",
                      "7 km from you", "₺ 50.0"),
                  LocationItem("assets/images/ortakoy.jpg", "Ortaköy Camii",
                      "9 km from you", "₺ 0.0"),
                  LocationItem("assets/images/kızkulesi.jpg", "Kız Kulesi",
                      "8 km from you", "₺ 100.0"),
                ],
              ),
            )
          ],
        ),
      );

  Widget LocationItem(
          String photo, String title, String description, String price) =>
      Container(
        width: 165,
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(width: 200, photo)),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 8,
                          color: Colors.grey,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 125, 87, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    price,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );

  Widget TopLocation() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Top Locations", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      StoryItem("assets/images/foto.jpg", "Arda A."),
                      StoryItem("assets/images/man.png", "Ahmet T."),
                      StoryItem("assets/images/girl.png", "İrem S."),
                      StoryItem("assets/images/foto.jpg", "Arda A."),
                      StoryItem("assets/images/man.png", "Ahmet T."),
                      StoryItem("assets/images/girl.png", "İrem S."),
                      StoryItem("assets/images/girl.png", "İrem S."),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color.fromARGB(55, 170, 170, 170)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Kadıköy",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune_outlined,
              color: Color.fromRGBO(236, 125, 87, 1),
              size: 18,
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 70),
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 35,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 18,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          //color: Color.fromARGB(255, 243, 243, 243),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Arda",
                    style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Explore City",
                    style: TextStyle(
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sunny,
                      color: Color.fromRGBO(236, 125, 87, 1),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    child: Icon(Icons.notifications),
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget BottomMenu() => Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
          color: Color.fromARGB(255, 243, 243, 243),
          width: 1,
        )),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomMenuItem("Home", Icons.home, true),
            BottomMenuItem("Moments", Icons.groups, false),
            HighlightedItem("Book", Icons.add_box),
            BottomMenuItem("Chat", Icons.chat, false),
            BottomMenuItem("Profile", Icons.person, false),
          ],
        ),
      );

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    } else {}

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }

  Widget HighlightedItem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 38,
            color: renk,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }
}
