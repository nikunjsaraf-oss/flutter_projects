import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String email;

  const HomeScreen({Key key, this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color(0xFF1B1A2A),
                Color(0xff2C3974),
                Color(0xff612D4A),
              ],
            ),
          ),
          child: Column(
            children: [
              Hero(
                tag: 'X',
                child: Image.asset(
                  'images/X.png',
                  scale: 0.5,
                ),
              ),
              Text(
                'Welcome, $email!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
