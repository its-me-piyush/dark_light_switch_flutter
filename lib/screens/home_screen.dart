import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[900] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              decoration: BoxDecoration(
                color: darkMode ? Colors.grey[900] : Colors.grey[300],
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: darkMode ? Colors.black : Colors.grey[500]!,
                    offset: const Offset(5.0, 5.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: darkMode ? Colors.grey[850]! : Colors.white,
                    offset: const Offset(-5.0, -5.0),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/like_icon.svg',
                color: darkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      darkMode = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: const Text(
                      'Dark',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      darkMode = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: const Text(
                      'Light',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
