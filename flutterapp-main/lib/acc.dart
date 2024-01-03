import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:isettozeur/InfoPage.dart';
import 'package:url_launcher/url_launcher.dart';

import '4CPage.dart';
import 'BiblioPage.dart';
import 'CoursPage.dart';
import 'FormationPage.dart';
import 'NewsPage.dart';
import 'ProfilePage.dart';
import 'menuItem.dart';

class AccPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ISET de Tozeur'),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: Image.asset('assets/iset.jpg'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InfoPage(),
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 32.0,
            ),
            onPressed: () {
              // Navigation vers la page de profil lorsque le bouton est pressé
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProfilePage(), // Remplacez par votre page de profil
                ),
              );
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Service Pratique',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 100.0, // Hauteur du carrousel
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,

                  scrollDirection: Axis.horizontal, // Défilement horizontal
                ),
                items: [
                  MenuItem(
                    icon: Icons.person_pin,
                    title: 'Nouveautés',
                    notificationCount: 2,
                    onPressed: () {
                      // Navigation vers la page "NewsPage"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NewsPage(), // Importez la page NewsPage
                        ),
                      );
                    },
                  ),
                  MenuItem(
                    icon: Icons.book,
                    title: 'Bibliotheques',
                    notificationCount: 0,
                    onPressed: () {
                      // Navigation vers la page "NewsPage"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LibraryPage(), // Importez la page NewsPage
                        ),
                      );
                    },
                  ),
                  MenuItem(
                    icon: Icons.signal_cellular_0_bar,
                    title: '4C',
                    notificationCount: 1,
                    onPressed: () {
                      // Navigation vers la page "NewsPage"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FourCClubPage(), // Importez la page NewsPage
                        ),
                      );
                    },
                  ),
                  MenuItem(
                    icon: Icons.format_textdirection_l_to_r_outlined,
                    title: 'Cours',
                    notificationCount: 2,
                    onPressed: () {
                      // Navigation vers la page "NewsPage"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CoursPage(), // Importez la page NewsPage
                        ),
                      );
                    },
                  ),
                  MenuItem(
                    icon: Icons.work,
                    title: 'Formation',
                    notificationCount: 2,
                    onPressed: () {
                      // Navigation vers la page "NewsPage"
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              FormationPage(), // Importez la page NewsPage
                        ),
                      );
                    },
                  ),
                  MenuItem(
                    icon: Icons.maps_home_work_outlined,
                    title: 'Admin',
                    notificationCount: 0,
                    onPressed: () async {
                      // URL du site web de l'ISET de Tozeur
                      const url = 'https://isett.rnu.tn/';

                      await launchUrl(url as Uri);
                    },
                  ),
                ],
              ),
              SizedBox(height: 20.0), // Espace entre le menu et l'image
              Text(
                'Aujourd\'hui',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 110, 110, 110),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hafsi HAYTHEM',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            'Big Data ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/1.png', // Chemin de votre image PNG
                      width: 100.0, // Largeur de l'image
                      height: 100.0, // Hauteur de l'image
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 110, 110, 110),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hafsi HAYTHEM',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            'Administration d\'une \n plateforme de conteneurs ',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/2.png', // Chemin de votre image PNG
                      width: 100.0, // Largeur de l'image
                      height: 100.0, // Hauteur de l'image
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
