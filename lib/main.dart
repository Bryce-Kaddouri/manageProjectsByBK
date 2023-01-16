import 'package:flutter/material.dart';
import 'package:manageprojectsbk/screens/project_list.dart';
import 'package:manageprojectsbk/screens/add_project.dart';
import 'package:manageprojectsbk/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index) async {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const [
            Text('Home'),
            Text('Add Project'),
            Text('Project List'),
          ][_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: setCurrentIndex,
          selectedItemColor: const Color.fromARGB(255, 249, 124, 6),
          unselectedItemColor: const Color.fromARGB(255, 28, 27, 27),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add Project',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Project List',
            ),
          ],
        ),
        body: [
          HomePage(),
          AddProjectPage(),
          ProjectListPage(),
        ][_currentIndex],
      ),
    );
  }
}
