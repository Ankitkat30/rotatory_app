import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GreetingScreen extends StatefulWidget {
  const GreetingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GreetingScreenState createState() => _GreetingScreenState();
}

class _GreetingScreenState extends State<GreetingScreen> {
  bool _showBirthday = true;
  bool _showAnniversary = false;

  void _toggleBirthday() {
    setState(() {
      _showBirthday = !_showBirthday;
      _showAnniversary =
          false; // Hide anniversary container when showing birthday container
    });
  }

  void _toggleAnniversary() {
    setState(() {
      _showAnniversary = !_showAnniversary;
      _showBirthday =
          false; // Hide birthday container when showing anniversary container
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: _toggleBirthday,
                  child: Stack(
                    children: [
                      Text(
                        'Birthday',
                        style: TextStyle(
                          fontSize: 20,
                          color: _showBirthday ? Colors.blue : Colors.black,
                        ),
                      ),
                      if (_showBirthday)
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 2,
                            color: Colors.blue,
                          ),
                        ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: _toggleAnniversary,
                  child: Stack(
                    children: [
                      Text(
                        'Anniversary',
                        style: TextStyle(
                          fontSize: 20,
                          color: _showAnniversary ? Colors.blue : Colors.black,
                        ),
                      ),
                      if (_showAnniversary)
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 2,
                            color: Colors.blue,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          const Text(
            "Today's Celebration 5 July",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          if (_showBirthday || _showAnniversary)
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    _showBirthday
                        ? 'assets/images/birthday_background.jpg'
                        : 'assets/images/anniversary_background.jpg',
                    fit: BoxFit.cover,
                  ),
                  ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/users.jpeg'),
                              radius: 30,
                            ),
                            const SizedBox(width: 16),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dr. Ritpurna '),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  '8085134963',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('ritpurna@gmail.om ',
                                    style: TextStyle(color: Colors.blue)),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
