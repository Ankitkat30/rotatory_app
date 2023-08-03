import 'package:flutter/material.dart';
import 'package:rotatory_app/common/widgets/drawer_header.dart';

class DrawerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          CustomDrawerHeader(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              // Handle profile tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Rpi Persident'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.holiday_village),
            title: Text('District'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.label_important),
            title: Text('Important'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('District'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.signal_cellular_0_bar_sharp),
            title: Text('Club'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.call_to_action_outlined),
            title: Text('Club in Action'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.document_scanner),
            title: Text('Document '),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.center_focus_strong),
            title: Text('Center'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.directions),
            title: Text('E directory'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: Text('Registration'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
            leading: Icon(Icons.branding_watermark),
            title: Text('Brand Center'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          Divider(),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15),
            child: Text("My Action",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          ),

          ListTile(
           
            title: Text('Cmr'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
        
            title: Text('Upload Document'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
        
            title: Text('Add important'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
        
            title: Text('Create event'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
        
            title: Text('Upload project'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
        
            title: Text('Settings'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
        
            title: Text('start project'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          ListTile(
        
            title: Text('Club manage'),
            onTap: () {
              // Handle settings tap here
            },
          ),
          // Add more ListTiles for additional drawer items
        ],
      ),
    );
  }
}
