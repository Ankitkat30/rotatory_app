import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/slide1.jpeg',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset('assets/images/dashboard_logo.png'),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RowContainer(first: 'Project', second: '3'),
                RowContainer(first: 'Man Hour', second: '35'),
                RowContainer(first: 'Routarian', second: '35'),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RowContainer(first: 'Non rotarian', second: '0'),
                RowContainer(first: 'total cose', second: '5000'),
                RowContainer(first: 'beneficary', second: '650'),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 3.w,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Event In Focus',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
                child: Image.asset(
              'assets/images/login_logo.png',
              width: 150,
              height: 100,
            )),
            SizedBox(
              height: 8.h,
            ),
            const Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                "Conferno District Confrence",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('Dhinchang Resort Sunapur',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            const Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('6-11-24',
                  style: TextStyle(fontWeight: FontWeight.w500)),
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                  horizontal: 3.w,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Club in Action',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
                child: Image.asset(
              'assets/images/login_logo.png',
              width: 150,
              height: 100,
            )),
            Center(
              child: Text('Celebrating doctor and chartend account day'),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    const Text('Total Cost',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Text('1000', style: TextStyle()),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    const Text('Total ManPower',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Text('5', style: TextStyle()),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  const Text('Total Beneficiar',
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  SizedBox(
                    width: 8.w,
                  ),
                  const Text(
                    '10',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowContainer extends StatelessWidget {
  final String first;
  final String second;
  const RowContainer({
    super.key,
    required this.first,
    required this.second,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(first),
          SizedBox(
            height: 5,
          ),
          Text(second)
        ],
      ),
    );
  }
}
