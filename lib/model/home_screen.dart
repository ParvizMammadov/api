import 'package:api/model/api.dart';
import 'package:api/model/user_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<UserModel> users;
  @override
  void initState() {
    users = [];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<UserModel>>(
        future: GetApi().getApi(),
        builder:
            (BuildContext context, AsyncSnapshot<List<UserModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      Text('Users name" ${users[index].name}'),
                      Text('Users email" ${users[index].email}'),
                      Text('Users phoneNumber" ${users[index].phoneNumber}'),
                      Text('Users age" ${users[index].age}'),
                      Text('Users username" ${users[index].userName}'),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
