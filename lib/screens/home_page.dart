import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text('Welcome to Manage Projects BK',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('This app allows you to manage your projects'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
                Text('You can add a project, edit a project, delete a project'),
          ),
          // image from assets/images manageProject.png
          // Image(
          //   image: AssetImage('assets/images/manageProject.png'),
          // ),
        ],
      ),
    );
  }
}
