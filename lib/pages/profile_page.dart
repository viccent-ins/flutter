import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  int itemCount = 20;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('item ${index + 1}'),
          leading: const Icon(Icons.leaderboard),
          trailing: const Icon(Icons.ads_click),
          onTap: (() => {
                debugPrint('You have selected item ${index + 1}'),
              }),
        );
      },
    );
  }
}
