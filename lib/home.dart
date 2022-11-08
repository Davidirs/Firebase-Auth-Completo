import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Iniciaste sesión como",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(),
                  Text(
                    user.email!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ElevatedButton.icon(
                      onPressed: () => FirebaseAuth.instance.signOut(),
                      icon: Icon(Icons.arrow_back),
                      label: Text("Sign Out"))
                ]),
          )),
    );
  }
}
