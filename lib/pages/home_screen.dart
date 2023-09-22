import 'package:fapp_empty/pages/game_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildNavigationBar());
  }

  NavigationBar _buildNavigationBar() {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: Colors.blue[200],
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
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Home Screen'),
    );
  }

  Widget _buildBody() {
    switch (currentPageIndex) {
      case 0:
        return const GameScreen(
          title: 'Game',
        );
      default:
        return const Placeholder();
    }
  }
}

// ElevatedButton(
//           onPressed = () {
//             Navigator.pushNamed(context, '/second');
//           },
//           child = const Text('Launch screen'),
//         ),

// const Card(
//             margin: EdgeInsets.all(10),
//             borderOnForeground: true,
//           ),

//  Container(
//             color: Colors.blue[500],
//             width: 300,
//             height: 100,
//             child: const TextField(
//               decoration: InputDecoration(
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                       width: 3, color: Colors.greenAccent),
//                 ),
//               ),
//             ),
//           ),

// Center(
//             child: Container(
//               margin: const EdgeInsets.all(10.0),
//               color: Colors.amber[600],
//               width: 300,
//               height: 100,
//               child: const Text('child'),
//             ),
//           ),


// const Stack(
//             alignment: Alignment.bottomCenter, children: <Widget>[
              
//             ]),

// Stack(
//           children: [
//             Align(
//               alignment: Alignment.topCenter,
//               child: Padding(
//                   padding: const EdgeInsets.all(30),
//                   child: Container(
//                     alignment: Alignment.center,
//                     margin: const EdgeInsets.all(15),
//                     color: Colors.pink[400],
//                     width: 200,
//                     height: 100,
//                     child: const Text(
//                         'child text Itaque blanditiis repudiandae perspiciatis quos sunt optio. Et ut quae quod et autem. Exercitationem omnis et necessitatibus officia ea qui accusamus error. omnis Expedita incidunt itaque veniam rerum omnis id cupiditate placeat officia.'),
//                   )),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Container(
//                     // alignment: Alignment.topCenter,
//                     margin: const EdgeInsets.all(7.5),
//                     color: Colors.green[300],
//                     width: 200,
//                     height: 100,
//                   )),
//             )
//           ],),