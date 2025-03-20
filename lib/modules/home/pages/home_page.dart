import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_flutter/modules/home/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = Modular.get<HomeController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xffEB5A3C),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffEB5A3C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xffE7D283)),
              onPressed: () {
                Modular.to.pushNamed('/counter/${controller.user}');
              },
              child: Text(
                'Go to Counter',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xffE7D283)),
              onPressed: () {
                controller.logout();
              },
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
