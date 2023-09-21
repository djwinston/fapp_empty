import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Stack(alignment: Alignment.center, children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 300,
              height: 100,
              child: const Text('child'),
            ),
          ),
          const Card(
            margin: EdgeInsets.all(10),
            borderOnForeground: true,
          )
        ]),
        bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.amber[1000],
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.games),
              icon: Icon(Icons.games_outlined),
              label: 'Game',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.timer),
              icon: Icon(Icons.timer_outlined),
              label: 'Time',
            ),
          ],
        ));
  }
}

// ElevatedButton(
//           onPressed = () {
//             Navigator.pushNamed(context, '/second');
//           },
//           child = const Text('Launch screen'),
//         ),
