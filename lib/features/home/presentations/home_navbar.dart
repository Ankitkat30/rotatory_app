import 'package:flutter/material.dart';
import 'package:rotatory_app/common/widgets/drawer.dart';
import 'package:rotatory_app/features/event/event.dart';
import 'package:rotatory_app/features/greeting/greeting_screen.dart';
import 'package:rotatory_app/features/home/presentations/home_screen.dart';
import 'package:rotatory_app/features/registration/registration.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
   const HomeScreen(),
    const GreetingScreen(),
   const RegistrationPage(),
  const EventScreen(),
    PlaceholderWidget(Colors.blue),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool get isHomePage => _selectedIndex == 0;

  Color _getLabelColor(int index) {
    return _selectedIndex == index ? Colors.blue : Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: isHomePage
            ? Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )
            : IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  // Handle back button press here
                },
              ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              child: Image.asset('assets/images/header_logo.png',
                  width: 150,
                  fit: BoxFit.contain), // Replace with your image asset
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search icon press here
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings icon press here
            },
          ),
        ],
      ),
      drawer: isHomePage ? DrawerContent() : null, // Show drawer if it's the home page
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.gesture_rounded,
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: 'Greeting',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.app_registration,
              color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
            label: 'Registration',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
              color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
            ),
            label: 'Eventt',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _selectedIndex == 4 ? Colors.blue : Colors.grey,
            ),
            label: 'Project',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue, // Change selected item color to blue
        unselectedItemColor: Colors.grey, // Change unselected item color to grey
        selectedLabelStyle: TextStyle(
          color: Colors.blue, // Change selected label text color to blue
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.transparent, // Hide unselected label text
        ),
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(color: color);
  }
}
