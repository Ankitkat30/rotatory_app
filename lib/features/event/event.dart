import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 18),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/login_logo.png'),
            ),
          const  SizedBox(
              height: 20,
            ),
           const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Event Name',style: TextStyle(fontWeight: FontWeight.w800),),
                    Text('Venue',style: TextStyle(fontWeight: FontWeight.w800)),
                    Text('Event Date',style: TextStyle(fontWeight: FontWeight.w800)),
                  ],
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Confenro District Confrence"),
                    Text("Dhinchak Resort Sunapur"),
                    Text("06/10/24"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
