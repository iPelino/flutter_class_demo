import 'package:flutter/material.dart';
import 'package:flutter_class_demo/constants/colors.dart';
import 'package:flutter_class_demo/screens/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: buildAppBar(),
      body: MainBody(),
      bottomNavigationBar: BottomNavigation(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: primaryDarkColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: primaryDarkColor,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      iconSize: 36,
      selectedItemColor: primaryDarkColor,
      backgroundColor: primaryColor,
      currentIndex: selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: 'Home',
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
