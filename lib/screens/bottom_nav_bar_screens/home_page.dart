import 'package:flutter/material.dart';

import '../../widgets/MyGridVCotainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(39, 105, 171, 1),
        actions: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_shopping_cart,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ),
            ),
          ),
        ],
        title: const Text(
          'Home',
          style: TextStyle(
            fontFamily: 'Nisebuschgardens',
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(right: 40),
          children: [
            const DrawerHeader(
              curve: Curves.bounceOut,
              child: Text('header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(4, 9, 35, 1),
                  Color.fromRGBO(39, 105, 171, 1),
                ],
                begin: FractionalOffset.bottomCenter,
                end: FractionalOffset.topCenter,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.white10,
                      blurRadius: 6,
                      offset: Offset(0, 0.1))
                ],
                borderRadius: BorderRadius.circular(
                  30,
                ),
                border: Border.all(color: Colors.white)),
            child: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'Search here ...',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Nunito',
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontFamily: 'Nisebuschgardens',
                    ),
                  ),
                  const SizedBox(height: 9),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: .85,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        MyGridviewContainer(
                          press: () {},
                          title: 'Cow',
                          imagePath: 'assets/pictures/icons/cow.png',
                        ),
                        MyGridviewContainer(
                          press: () {},
                          title: 'Buffalo',
                          imagePath: 'assets/pictures/icons/bull.png',
                        ),
                        MyGridviewContainer(
                          press: () {},
                          title: 'Sheep',
                          imagePath: 'assets/pictures/icons/sheep.png',
                        ),
                        MyGridviewContainer(
                          press: () {},
                          title: 'Lamb',
                          imagePath: 'assets/pictures/icons/sheep.png',
                        ),
                        MyGridviewContainer(
                          press: () {},
                          title: 'Goat',
                          imagePath: 'assets/pictures/icons/bull.png',
                        ),
                        MyGridviewContainer(
                          press: () {},
                          title: 'Others',
                          imagePath: 'assets/pictures/icons/bull.png',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
