import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name = "Jordan ET";
  final String email = "jordan.thomas0811@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(email, style: TextStyle(color: Colors.grey[700])),
          ],
        ),
      ),
    );
  }
}
