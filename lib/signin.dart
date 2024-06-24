import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Sign In', style: TextStyle(fontSize: 24)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(labelText: 'Email')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Sign In'))
        ],
      ),
    );
  }
}
