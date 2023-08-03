import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/personal_profile.png'), // Replace with your profile image asset
            radius: 40,
          ),
        const  SizedBox(height: 10),
        const  Text(
            'Abhimanyu Saraf',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
          ),
         const Text(
            'abhimanyusaraf@avantikain.com',
            style: TextStyle(fontSize: 14,color: Colors.white),
          ),
        const  SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildSocialImage('assets/images/youtube.png', () {
                // Handle YouTube image tap here
              }),
              _buildSocialImage('assets/images/instagram.png', () {
                // Handle Google image tap here
              }),
              _buildSocialImage('assets/images/facebook.png', () {
                // Handle Facebook image tap here
              }),
              _buildSocialImage('assets/images/twitter.png', () {
                // Handle Twitter image tap here
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSocialImage(String imagePath, VoidCallback onTap) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: 15,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}
