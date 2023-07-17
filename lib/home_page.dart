import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  void signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    // TODO: Handle successful sign out and navigate back to the start page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You are logged in!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => signOut(context),
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
