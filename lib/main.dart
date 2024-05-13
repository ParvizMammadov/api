import 'package:api/model/home_screen.dart';

import 'package:flutter/material.dart';

void main() => runApp(const Users());

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
