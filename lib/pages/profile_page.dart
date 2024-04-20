import 'package:flutter/material.dart';
import 'package:wash_out/services/auth/auth_service.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void logout()  {
    final authService = AuthService();
    authService.signOut();
  }

  String _username = '';
  String _bio = '';
  String _address = '';
  String _photoUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                // backgroundImage: _photoUrl.isNotEmpty
                //     ? NetworkImage(_photoUrl)
                //     : AssetImage('ass'),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Bio',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _bio = value;
                });
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _address = value;
                });
              },
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Implement photo upload functionality
                },
                child: Text('Add Photo'),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  logout();
                },
                child: Text('Sign Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
