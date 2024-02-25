import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        // Add any additional app bar customization if needed
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              // Add logic to load or display the user's profile picture
              backgroundImage: NetworkImage('url_to_user_profile_picture'),
            ),
            SizedBox(height: 16.0),
            Text(
              'User Name',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('@username'),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // Implement logic for editing the profile
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 16.0),
            // Add tabs for Photos, Posts, Followers, Following, Favorites, Activity
            // Implement logic to navigate or display content based on selected tab
            // You might want to use a TabBarView or a PageView for this purpose

            // Bio Section
            Text(
              'Bio',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'User\'s Bio text...',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),

            // Additional Information Section
            Text('Website: User\'s website'),
            Text('Email: User\'s email'),
            Text('Location: User\'s location'),
          ],
        ),
      ),
    );
  }
}
